all: build/hello_world.o
		@ld -m elf_i386 -s -o build/hello build/hello_world.o
		@rm build/hello_world.o
build/hello: build/hello_world.o
		@ld -m elf_i386 -s -o build/hello build/hello_world.o
		@rm build/hello_world.o
build/hello_world.o: src/hello_world.asm
		@nasm -f elf src/hello_world.asm -o build/hello_world.o
clean:
		@rm build/hello
