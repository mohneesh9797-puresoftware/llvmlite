#!/bin/bash
# Use this to make the llvmdev packages that are manylinux1 compatible
srcdir=$( cd "$(dirname $0)/../.."  && pwd )
echo "srcdir=$srcdir"

echo "MINICONDA_FILE=$MINICONDA_FILE"
if [ `uname -m` = 'aarch64' ]; then
  docker run --rm -v $srcdir:/root/llvmlite quay.io/pypa/manylinux2014_aarch64 ${PRECMD} /root/llvmlite/buildscripts/manylinux1/$1 ${MINICONDA_FILE} $2
else
  docker run --rm -v $srcdir:/root/llvmlite quay.io/pypa/manylinux1_${ARCH} ${PRECMD} /root/llvmlite/buildscripts/manylinux1/$1 ${MINICONDA_FILE} $2
fi
