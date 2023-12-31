#!/bin/bash
#
DL_NAME="openwrt-sdk-ipq40xx_gcc-11.3.0_musl_eabi.Linux-x86_64.tar.xz"
curl -O -L https://github.com/qpzr/low/releases/download/v5.15/$DL_NAME
mkdir -p sdk
tar -xJf $DL_NAME -C sdk
cp -rf sdk/*/staging_dir/* ./staging_dir/
rm -rf $DL_NAME sdk
sed -i '/\(tools\|toolchain\)\/Makefile/d' Makefile
