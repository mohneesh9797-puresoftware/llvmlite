#!/bin/bash
set -e
cd /root
if [ `uname -m` = 'aarch64' ]; then
   curl "https://github.com/Archiconda/build-tools/releases/download/0.2.3/Archiconda3-0.2.3-Linux-aarch64.sh" > mini3.sh
   chmod +x mini3.sh
   bash mini3.sh -b -f
else
  curl https://repo.continuum.io/miniconda/$1 > mini3.sh
  bash mini3.sh -b -f
fi
source /root/miniconda3/bin/activate root

cd /root/llvmlite/buildscripts/manylinux1
./configure_conda.sh
