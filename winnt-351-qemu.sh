#!/bin/sh

#########################################################################
## Script to run Windows NT 3.51 Workstation/Server on QEMU
## Hobby is running retro OSs on modern hardware (haters gonna hate)
## Ruben Schade 2014
## 
## Notes:
## - KPs if post-486, or VT-x enabled (so don't accelerate)
## - AFAIK, initial FAT16 bootstrap doesn't like QCOW2
## - "soundhw sb16" crashes after login (sb16 not high priority any more):
##     <http://bugs.launchpad.net/qemu/+bug/1295587>
##

qemu-system-i386 \
    -machine isapc \
    -m 16 \
    -cpu 486 \
    -k en-us \
    -drive file=dos622.img,if=floppy,media=disk \
    -drive file=winnt-351.img,if=ide,index=0,media=disk \
    -drive file=winnt-351.iso,if=ide,index=2,media=cdrom

