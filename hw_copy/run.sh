#!/bin/bash

docker build -t hw_copy_image -f hw_copy/Dockerfile .

echo "Testing addition:"
docker run --rm hw_copy_image "/app/add \$0 \$1" 3 4

echo -e "\nTesting multiplication:"
docker run --rm hw_copy_image "/app/mul \$0 \$1" 3 4

echo -e "\nUsage examples:"
echo "docker run --rm hw_copy_image \"/app/mul \\\$0 \\\$1\" 5 6"
echo "docker run --rm hw_copy_image \"/app/add \\\$0 \\\$1\" 5 6"