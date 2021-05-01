#!/usr/bin/env bash
SUFFIX=-stable

sudo genkernel --no-clean \
    --kernel-filename=vmlinuz$SUFFIX \
    --initramfs-filename=initramfs$SUFFIX.img \
    --systemmap-filename=System.map$SUFFIX \
    --strip=all \
    all
