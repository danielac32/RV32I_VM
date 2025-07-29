

run:
	clear
	gcc -o riscv_em riscv_em.c 
	cd firmware && ./build_fw.sh
	./riscv_em firmware/hello_world_fw.bin