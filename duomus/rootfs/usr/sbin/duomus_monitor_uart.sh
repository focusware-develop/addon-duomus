#!/bin/bash

if [ -e /dev/ttyS0 ]; then
    python -m esp_idf_monitor --no-reset -p /dev/ttyS0
else
    if [ -e /dev/ttyAMA3 ]; then
        python -m esp_idf_monitor --no-reset -p /dev/ttyAMA3
    else
        python -m esp_idf_monitor --no-reset -p /dev/ttyAMA0
    fi
fi
