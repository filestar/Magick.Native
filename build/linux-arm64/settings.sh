SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"

# Compiler settings
if [[ "${DEBUG_BUILD}" ]]; then
    export FLAGS="-g3 -O0 -fPIC -DDEBUG"
    export CMAKE_BUILD_TYPE="Debug"
    export MESON_BUILD_TYPE="debug"
else
    export FLAGS="-O3 -fPIC -DNDEBUG"
    export CMAKE_BUILD_TYPE="Release"
    export MESON_BUILD_TYPE="release"
fi

# Shared options
export PLATFORM=LINUX
export QUANTUMS=("Q8" "Q16" "Q16-HDRI")
export EXTENSION="so"
export STRICT_FLAGS="${FLAGS} -Wall"
export CONFIGURE="./configure"
export CONFIGURE_OPTIONS="--host aarch64-linux-gnu"
export CMAKE_COMMAND="cmake"
export CMAKE_OPTIONS=""
export MAKE="make"
export MAKEFLAGS="-j$(nproc)"
export MESON_OPTIONS="--cross-file=$SCRIPT_PATH/cross-compilation.meson"
export CPPFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"
export PKG_PATH="/usr/local/lib/pkgconfig"
export SIMD_OPTIONS="-DWITH_SIMD=0"
export SSE_OPTIONS=""

# Library specific options
export FFI_OPTIONS=""
export FONTCONFIG_OPTIONS=""
export HEIF_OPTIONS=""
export OPENEXR_OPTIONS=""
export WEBP_OPTIONS="--enable-libwebpmux --enable-libwebpdemux"
export XML_OPTIONS=""
export IMAGEMAGICK_OPTIONS=""

# Linux ARM64 options
export CC=aarch64-linux-gnu-gcc
export CXX=aarch64-linux-gnu-g++
