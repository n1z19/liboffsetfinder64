#!/usr/bin/env zsh

set -e
export WORKFLOW_ROOT=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/.github/workflows
export DEP_ROOT=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/dep_root
export BASE=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/

cd /Users/runner/work/liboffsetfinder64/liboffsetfinder64/
ln -sf ${DEP_ROOT}/macOS_x86_64_Release/{lib/,include/} ${DEP_ROOT}/
rm -rf ${DEP_ROOT}/include/liboffsetfinder64
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=$(which make) -DCMAKE_C_COMPILER=$(which clang) -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_MESSAGE_LOG_LEVEL="WARNING" -G "CodeBlocks - Unix Makefiles" -S ./ -B cmake-build-release-x86_64 -DARCH=x86_64 -DNO_PKGCFG=1
make -j4 -l4 -C cmake-build-release-x86_64

ln -sf ${DEP_ROOT}/macOS_x86_64_Debug/{lib/,include/} ${DEP_ROOT}/
rm -rf ${DEP_ROOT}/include/liboffsetfinder64
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_MAKE_PROGRAM=$(which make) -DCMAKE_C_COMPILER=$(which clang) -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_MESSAGE_LOG_LEVEL="WARNING" -G "CodeBlocks - Unix Makefiles" -S ./ -B cmake-build-debug-x86_64 -DARCH=x86_64 -DNO_PKGCFG=1
make -j4 -l4 -C cmake-build-debug-x86_64

ln -sf ${DEP_ROOT}/macOS_arm64_Release/{lib/,include/} ${DEP_ROOT}/
rm -rf ${DEP_ROOT}/include/liboffsetfinder64
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=$(which make) -DCMAKE_C_COMPILER=$(which clang) -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_MESSAGE_LOG_LEVEL="WARNING" -G "CodeBlocks - Unix Makefiles" -S ./ -B cmake-build-release-arm64 -DARCH=arm64 -DNO_PKGCFG=1
make -j4 -l4 -C cmake-build-release-arm64

ln -sf ${DEP_ROOT}/macOS_arm64_Debug/{lib/,include/} ${DEP_ROOT}/
rm -rf ${DEP_ROOT}/include/liboffsetfinder64
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_MAKE_PROGRAM=$(which make) -DCMAKE_C_COMPILER=$(which clang) -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_MESSAGE_LOG_LEVEL="WARNING" -G "CodeBlocks - Unix Makefiles" -S ./ -B cmake-build-debug-arm64 -DARCH=arm64 -DNO_PKGCFG=1
make -j4 -l4 -C cmake-build-debug-arm64
