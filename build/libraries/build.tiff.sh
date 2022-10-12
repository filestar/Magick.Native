#!/bin/bash
set -e

echo ######## ENV
env

cd tiff
autoreconf -fiv
$CONFIGURE $CONFIGURE_OPTIONS --disable-shared CFLAGS="$FLAGS" CXXFLAGS="$FLAGS"
echo '' > version
$MAKE install
