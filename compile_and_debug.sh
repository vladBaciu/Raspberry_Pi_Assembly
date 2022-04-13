#!/bin/bash

arm-linux-gnueabihf-as $1 -o output.o && arm-linux-gnueabihf-ld -static output.o -o output


echo "Run qemu-arm emulation ..."
gnome-terminal -- qemu-arm -L /usr/arm-linux-gnueabihf -g 1234 ./output

wait

echo "Connect to the gdb server ..."
gnome-terminal -- gdb-multiarch -q --nh -ex 'set architecture arm' -ex 'file output' -ex 'target remote localhost:1234' -ex 'layout split' -ex 'layout regs'





