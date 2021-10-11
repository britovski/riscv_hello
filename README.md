# riscv_hello
RISC-V Quick Start

## Task definition
You need to have a working setup. See my scripts to setup (Reference: https://github.com/britovski/micro_skel).

Clone this repository or copy the source files to your working directory

## Hello World

You can use the hello.S and hello.c provided here to test the flow.

Suppose that the sources are in ~/micro_skel/riscv_hello/sources

        cd ~/micro_skel/riscv_hello/sources

Begin to use the toolchain to generate 64-bit binaries from assembly:

        riscv64-unknown-elf-as hello.S -o hello.o
        riscv64-unknown-elf-ld hello.o -o hello

Then run using Spike ISA Simulator:

        spike pk hello
    
To compile the .c program, use:

        riscv64-unknown-elf-gcc hello.c -o hello

To compile the .c program for 32-bit binary, use:

        riscv64-unknown-elf-gcc hello.c -march=rv32i -mabi=ilp32 -o hello32
        
Then run using Spike ISA Simulator for 32-bit proxy kernel:

        spike --isa=rv32i $(which pk) hello32
        
Use also `file` command to compare the two binaries:

        file hello
        file hello32
        
Explore to compile and run both .c and .S for different -mabi and -march options... Enjoy!
