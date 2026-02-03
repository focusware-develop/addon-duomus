#!/bin/bash

esptool --chip esp32s3 --port /dev/ttyACM0 --baud 921600  --before default_reset --after hard_reset write_flash \
        -z 0x0 ./opentherm_cascade.ino.bootloader.bin 0x8000 \
        ./opentherm_cascade.ino.partitions.bin 0xe000 ./boot_app0.bin 0x10000 ./opentherm_cascade.ino.bin
