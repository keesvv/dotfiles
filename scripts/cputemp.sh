#!/usr/bin/env bash
printf "%.f" $(sensors -u "$CPUTEMP_SENSOR" | rg temp1_input | awk -F ': ' '{print $2}')
