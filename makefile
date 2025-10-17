# build_dir = build/x86_64
# release_dir = $(build_dir)/Release
# src_dir = src

# x86_64_asm_sources = $(shell find $(src_dir)/ -name *.asm)
# x86_64_asm_objects = $(patsubst $(src_dir)/%.asm, $(release_dir)/%.o, $(x86_64_asm_sources))

# x86_64_cpp_sources = $(shell find $(src_dir)/ -name *.cpp)

# $(release_dir)/%.o: $(src_dir)/%.asm
# 	mkdir -p $(dir $@)
# 	nasm -f elf64 $< -o $@

# .PHONY: build-x86_64
# build-x86_64: $(x86_64_asm_objects)
# 	mkdir -p $(release_dir)
# 	x86_64-elf-ld -n -o $(release_dir)/kernel.bin -T $(build_dir)/linker.ld $(x86_64_asm_objects)
# 	cp $(release_dir)/kernel.bin $(release_dir)/iso/boot
# 	grub-mkrescue /usr/lib/grub/i386-pc -o $(release_dir)/kernel.iso $(release_dir)/iso
	

# run: build-x86_64
# 	qemu-system-x86_64 -cdrom $(release_dir)/kernel.iso

cc = x86_64-elf-gcc
cxx = x86_64-elf-g++
ld = x86_64-elf-ld
asm = nasm

build_dir = build
build_x86_64_dir = $(build_dir)/x86_64
release_dir = $(build_x86_64_dir)/Release
release_iso_dir = $(release_dir)/iso
src_dir = src
grub_cfg = $(release_iso_dir)/boot/grub/grub.cfg
ld_config = $(build_dir)/linker.ld

cxx_flags = -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -nostdlib -mno-red-zone -mcmodel=kernel -fpermissive
cxx_flags += -I$(src_dir) -O1 -std=c++20 -g -ggdb3 #-fno-strict-aliasing
asm_flags = -f elf64
ld_flags = -n

x86_64_asm_sources = $(shell find $(src_dir)/ -name *.asm)
x86_64_asm_objects = $(patsubst $(src_dir)/%.asm, $(release_dir)/%.o, $(x86_64_asm_sources))

x86_64_cpp_sources = $(shell find $(src_dir)/ -name '*.cpp')
x86_64_cpp_objects = $(patsubst $(src_dir)/%.cpp, $(release_dir)/%.o, $(x86_64_cpp_sources))

objects = $(x86_64_asm_objects) $(x86_64_cpp_objects)

.PHONY: all
all: build-x86_64

$(release_dir)/%.o: $(src_dir)/%.asm
	mkdir -p $(dir $@)
	$(asm) $(asm_flags) $< -o $@

$(release_dir)/%.o: $(src_dir)/%.cpp
	mkdir -p $(dir $@)
	$(cxx) $(cxx_flags) -S $< -o $(patsubst %.o,%.s,$@)
	$(cxx) $(cxx_flags) -c $< -o $@

$(grub_cfg):
	@mkdir -p $(dir $@)
	@echo 'set timeout=0' >> $@
	@echo 'set default=0' >> $@
	@echo 'menuentry "Nark OS" {' >> $@
	@echo '    multiboot2 /boot/kernel.bin' >> $@
	@echo '    boot' >> $@
	@echo '}' >> $@

.PHONY: build-x86_64

build-x86_64: $(grub_cfg) $(objects)
	$(ld) $(ld_flags) -o $(release_dir)/kernel.bin -T $(ld_config) $(objects)
	$(ld) $(ld_flags) -o $(release_dir)/kernel.elf -T $(ld_config) $(objects)
	cp $(release_dir)/kernel.bin $(release_iso_dir)/boot/kernel.bin
	cp $(release_dir)/kernel.elf $(release_iso_dir)/boot/kernel.elf
	grub-mkrescue /usr/lib/grub/i386-pc -o $(release_dir)/kernel.iso $(release_iso_dir)	
# 	$(ld) $(ld_flags) -o $(release_dir)/kernel.elf -T $(ld_config) $(objects)
# 	x86_64-elf-objcopy -O binary $(release_dir)/kernel.elf $(release_dir)/kernel.bin
# 	cp $(release_dir)/kernel.bin $(release_iso_dir)/boot/kernel.bin
# 	grub-mkrescue /usr/lib/grub/i386-pc -o $(release_dir)/kernel.iso $(release_iso_dir)	

run: build-x86_64
	qemu-system-x86_64 -m 8G -cdrom $(release_dir)/kernel.iso

debug: build-x86_64
	@echo "Starting QEMU in debug mode..."
	@echo "In another terminal, run: make gdb"
	qemu-system-x86_64 -s -S -cdrom $(release_dir)/kernel.iso

clear:
	rm -rf $(build_x86_64_dir)

gdb: 
#	echo "target remote localhost:1234" > .gdbinit
# 	ddd --debugger gdb $(release_dir)/kernel.elf
	gdb $(release_dir)/kernel.elf
	c
	target remote localhost:1234

.PHONY: clear

