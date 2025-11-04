#!/usr/bin/env zsh

set -e
export WORKFLOW_ROOT=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/.github/workflows
export DEP_ROOT=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/dep_root
export BASE=/Users/runner/work/liboffsetfinder64/liboffsetfinder64/

cd ${BASE}
export liboffsetfinder64_VERSION=$(git rev-list --count HEAD | tr -d '\n')
cp -RpP pkgconfig cmake-build-release-x86_64
tar cpPJf "liboffsetfinder64-macOS-x86_64-Build_${liboffsetfinder64_VERSION}-RELEASE.tar.xz" -C cmake-build-release-x86_64 liboffsetfinder64.a pkgconfig
cp -RpP pkgconfig cmake-build-debug-x86_64
tar cpPJf "liboffsetfinder64-macOS-x86_64-Build_${liboffsetfinder64_VERSION}-DEBUG.tar.xz" -C cmake-build-debug-x86_64 liboffsetfinder64.a pkgconfig
cp -RpP pkgconfig cmake-build-release-arm64
tar cpPJf "liboffsetfinder64-macOS-arm64-Build_${liboffsetfinder64_VERSION}-RELEASE.tar.xz" -C cmake-build-release-arm64 liboffsetfinder64.a pkgconfig
cp -RpP pkgconfig cmake-build-debug-arm64
tar cpPJf "liboffsetfinder64-macOS-arm64-Build_${liboffsetfinder64_VERSION}-DEBUG.tar.xz" -C cmake-build-debug-arm64 liboffsetfinder64.a pkgconfig
