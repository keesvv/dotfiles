#!/usr/bin/env bash
printf "%.f" $(sensors -u k10temp-pci-00c3 | rg temp1_input | awk -F ': ' '{print $2}')
