#!/bin/bash

rm -rf build
mkdir build

cd build

CMAKE_PREFIX_PATH=../../install/cmake cmake -DCMAKE_TOOLCHAIN_FILE="$IDF_PATH/tools/cmake/toolchain-esp32.cmake" -DCMAKE_INSTALL_PREFIX:PATH=../install -DPYTHON_DEPS_CHECKED=1 -DESP_PLATFORM=1 --warn-uninitialized ..

make -j8 all

