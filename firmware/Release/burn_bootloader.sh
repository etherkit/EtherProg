#!/bin/bash

avrdude -c usbtiny -p t45 -U flash:w:EtherProg.hex
avrdude -c usbtiny -p t45 -V -U lfuse:w:0xe1:m -U hfuse:w:0x5d:m -U efuse:w:0xff:m
