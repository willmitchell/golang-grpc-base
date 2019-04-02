from golang:1.12

RUN apt-get update -qq && apt-get install unzip -y \
    && cd /tmp \
    && wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip \
    && cd /usr/local && unzip /tmp/protoc-3.7.1-linux-x86_64.zip \
    && export PATH=/usr/local/bin:$PATH

