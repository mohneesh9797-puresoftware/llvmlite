#!/bin/bash
set -e
cd /root
if [ `uname -m` = 'aarch64' ]; then
   yum install -y wget
   wget -q "https://github.com/Archiconda/build-tools/releases/download/0.2.3/Archiconda3-0.2.3-Linux-aarch64.sh" -O archiconda.sh
   chmod +x archiconda.sh
   bash archiconda.sh -b -p $HOME/miniconda
   export PATH="$HOME/miniconda/bin:$PATH"
   sudo cp -r $HOME/miniconda/bin/* /usr/bin/
   hash -r
else
  curl https://repo.continuum.io/miniconda/$1 > mini3.sh
  bash mini3.sh -b -f
fi
source /root/miniconda3/bin/activate root

cd /root/llvmlite/buildscripts/manylinux1
./configure_conda.sh
