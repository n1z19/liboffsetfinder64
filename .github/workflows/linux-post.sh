#!/usr/bin/env bash

set -e
export TMPDIR=/tmp
export WORKFLOW_ROOT=${TMPDIR}/Builder/repos/liboffsetfinder64/.github/workflows
export DEP_ROOT=${TMPDIR}/Builder/repos/liboffsetfinder64/dep_root
export BASE=${TMPDIR}/Builder/repos/liboffsetfinder64/

cd ${BASE}
export liboffsetfinder64_VERSION=$(git rev-list --count HEAD | tr -d '\n')
cd ${WORKFLOW_ROOT}
echo "liboffsetfinder64-Linux-x86_64-Build_${liboffsetfinder64_VERSION}-RELEASE.tar.xz" > name1.txt
echo "liboffsetfinder64-Linux-x86_64-Build_${liboffsetfinder64_VERSION}-DEBUG.tar.xz" > name2.txt
cp -RpP "${BASE}/cmake-build-release-x86_64/liboffsetfinder64.a" liboffsetfinder64.a
cp -RpP "${BASE}/pkgconfig" .
rm pkgconfig/*.in
tar cpPJvf "liboffsetfinder641.tar.xz" liboffsetfinder64.a pkgconfig
cp -RpP "${BASE}/cmake-build-debug-x86_64/liboffsetfinder64.a" liboffsetfinder64.a
tar cpPJvf "liboffsetfinder642.tar.xz" liboffsetfinder64.a pkgconfig
