#/bin/bash

set -e

riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -Wl,-Bstatic,-T,sections.lds,--strip-debug -ffreestanding -nostdlib -o hello_world_fw.elf start.s main.c
riscv64-unknown-elf-objcopy -O binary hello_world_fw.elf hello_world_fw.bin
riscv64-unknown-elf-objdump -d hello_world_fw.elf > hello_world_fw.list
# print text section
#riscv32-none-elf-objdump -d hx8kdemo_fw.elf | awk '{print "0x"$2","}'

# dump all
#riscv32-none-elf-objdump -d hx8kdemo_fw.elf 

