#!/bin/bash
set -e

echo ######## ENV
env

cd png
autoreconf -fiv
$CONFIGURE $CONFIGURE_OPTIONS --disable-mips-msa --disable-arm-neon --disable-powerpc-vsx --disable-shared CFLAGS="$FLAGS"
$MAKE install
