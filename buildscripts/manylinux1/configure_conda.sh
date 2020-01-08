# Setup miniconda environment that is compatible with manylinux1 docker image
if [` uame -m ` = "aarch64"];then
  conda install -y conda=4.5.12 conda-build=3.17.6 anaconda-client
  echo "conda ==4.5.12" >> /root/miniconda3/conda-meta/pinned
  echo "conda-build ==3.17.6" >> /root/miniconda3/conda-meta/pinned
else
  conda install -y conda=4.3.25 conda-build=3.0.9 anaconda-client
  echo "conda ==4.3.25" >> /root/miniconda3/conda-meta/pinned
  echo "conda-build ==3.0.9" >> /root/miniconda3/conda-meta/pinned
fi
# Pin conda and conda-build versions that are known to be compatible
echo "conda ==4.3.25" >> /root/miniconda3/conda-meta/pinned
echo "conda-build ==3.0.9" >> /root/miniconda3/conda-meta/pinned
