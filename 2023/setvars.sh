# source this file from your shell to set up PYTHONPATH

BASE=$(realpath $(dirname $0)/../..)
echo $BASE
export PYTHONPATH=$BASE/crsq-heap/src:$BASE/crsq-arithmetic/src:$BASE/crsq-main/src

