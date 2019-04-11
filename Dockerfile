from golang:1.12

RUN apt-get update -qq && apt-get install unzip -y \
    && cd /tmp \
    && wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip \
    && cd /usr/local && unzip /tmp/protoc-3.7.1-linux-x86_64.zip \
    && export PATH=/usr/local/bin:$PATH \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs \
    && npm i -g serverless serverless-pseudo-parameters

RUN go get -u google.golang.org/grpc \
    && go get -u github.com/golang/protobuf/proto \
    && go get -u github.com/golang/protobuf/protoc-gen-go \
    && go get -u github.com/aws/aws-sdk-go \
    && go get -u github.com/aws/aws-lambda-go/events \
    && go get -u github.com/aws/aws-lambda-go/lambda \
    && go get -u github.com/sirupsen/logrus \
    && go get github.com/deckarep/golang-set \
    && go get -u github.com/mitchellh/go-homedir \
    && go get -u github.com/spf13/cobra \
    && go get -u github.com/spf13/viper \
    && go get -u github.com/inconshreveable/mousetrap \
    && go get -u github.com/konsorten/go-windows-terminal-sequences \
    && go get -u github.com/lib/pq

