#!/bin/bash
set -e

echo ######## ENV
env

cd zlib
chmod +x ./configure
$CONFIGURE --static
$MAKE install CFLAGS="$FLAGS"
