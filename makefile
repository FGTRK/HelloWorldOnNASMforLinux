hello: HelloWorld_x32.asm HelloWorld_x64.asm #Building both programs
	nasm -f elf HelloWorld_x32.asm -o HelloWorld_x32.o #Program compilation x32
	ld -m elf_i386 HelloWorld_x32.o -o HelloWorld_x32 #Linking the program x32
	rm HelloWorld_x32.o #Delete object file x32

	nasm -f elf64 HelloWorld_x64.asm -o HelloWorld_x64.o #Program compilation x64
	ld HelloWorld_x64.o -o HelloWorld_x64 #Linking the program x64
	rm HelloWorld_x64.o #Delete object file x64

	clear #Clear the concole
	./HelloWorld_x32 #Running HelloWorld_x32
	./HelloWorld_x64 #Running HelloWorld_x32

hello32: HelloWorld_x32.asm #Building both programs on x32
	nasm -f elf HelloWorld_x32.asm -o HelloWorld_x32.o
	ld -m elf_i386 HelloWorld_x32.o -o HelloWorld_x32
	clear
	./HelloWorld_x32

hello64: HelloWorld_x64.asm #Building both programs on x64
	nasm -f elf64 HelloWorld_x64.asm -o HelloWorld_x64.o
	ld HelloWorld_x64.o -o HelloWorld_x64
	clear
	./HelloWorld_x64	