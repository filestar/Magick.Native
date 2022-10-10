#!/bin/bash
set -e

cd jpeg-turbo
$CMAKE_COMMAND . $CMAKE_OPTIONS -DCMAKE_INSTALL_PREFIX=/usr/local -DENABLE_SHARED=off $SIMD_OPTIONS -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS="$FLAGS"
$MAKE install
