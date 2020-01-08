export ARCH="aarch64"
export MINICONDA_FILE="Archiconda3-0.2.3-Linux-aarch64.sh"
cd $(dirname $0)
./docker_run.sh $1 $2
