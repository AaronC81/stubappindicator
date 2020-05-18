#!/bin/bash
gcc $(pkg-config --cflags gtk+-3.0) -c -fPIC stubappindicator.c -o stubappindicator.o
if [ $? -ne 0 ]; then exit; fi
gcc stubappindicator.o -shared -o stubappindicator.so
cp stubappindicator.so libappindicator.so