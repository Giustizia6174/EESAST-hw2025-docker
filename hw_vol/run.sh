#!/bin/bash
# 用法: ./run.sh <program> <num1> <num2>
if [ $# -lt 3 ]; then
    echo "Usage: $0 <program> <num1> <num2>"
    echo "Example: $0 mul 3 4"
    exit 1
fi

program=$1
num1=$2
num2=$3

docker build -t hw_vol_image -f hw_vol/Dockerfile .

echo "Compiling and running $program with arguments $num1 $num2:"
docker run --rm \
  --mount type=bind,source=$(pwd)/src,target=/app \
  hw_vol_image \
  sh -c "g++ -o /app/$program /app/${program}.cpp && /app/$program $num1 $num2"