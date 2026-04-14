#!/bin/bash

if [ -e /dev/ttyS0 ]; then
    python -m esp_idf_monitor --no-reset -p /dev/ttyS0
else
    python -m esp_idf_monitor --no-reset -p /dev/ttyACM0
fi
