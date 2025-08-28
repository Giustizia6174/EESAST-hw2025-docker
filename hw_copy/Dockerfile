FROM ubuntu:20.04

RUN apt-get update && apt-get install -y g++

WORKDIR /app
COPY src/mul.cpp /app/mul.cpp
COPY src/add.cpp /app/add.cpp

RUN g++ -o /app/mul /app/mul.cpp && \
    g++ -o /app/add /app/add.cpp

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["echo \"Usage: docker run <image> <program> <num1> <num2>\" && echo \"Available programs: /app/mul, /app/add\""]