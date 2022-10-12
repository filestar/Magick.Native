#!/bin/bash
set -e

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
. $SCRIPT_PATH/settings.sh

export GTKDOCIZE=true

echo ******BUILD ZLIB
$1/build.zlib.sh
#$1/build.xml.sh
echo ******BUILD PNG
$1/build.png.sh
#$1/build.freetype.sh
#$1/build.fontconfig.sh
echo ******BUILD JPEGTURBO
$1/build.jpeg-turbo.sh
echo ******BUILD TIFF
$1/build.tiff.sh
#$1/build.webp.sh
echo ******BUILD OPENJPEG
$1/build.openjpeg.sh
#$1/build.lcms.sh
#$1/build.aom.sh
#$1/build.de265.sh
#$1/build.heif.sh
#$1/build.raw.sh
#$1/build.openexr.sh
#$1/build.ffi.sh
echo ******BUILD GLIB
$1/build.glib.sh
#$1/build.lqr.sh
#$1/build.pixman.sh
echo ******BUILD CAIRO
#$1/build.cairo.sh
#$1/build.fribidi.sh
#$1/build.harfbuzz.sh
echo ******BUILD PANGO
#$1/build.pango.sh
echo ******BUILD CROCO
#$1/build.croco.sh
echo ******BUILD RSVG
$1/build.rsvg.sh
#$1/build.raqm.sh
