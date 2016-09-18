FROM golang:1.5

RUN mkdir -p /home/deployer/gosrc/src/github.com/aries-auto/ariesautomotive
ADD . /home/deployer/gosrc/src/github.com/aries-auto/ariesautomotive
WORKDIR /home/deployer/gosrc/src/github.com/aries-auto/ariesautomotive
RUN export GOPATH=/home/deployer/gosrc && go get
RUN export GOPATH=/home/deployer/gosrc && go build -o aries ./index.go

ENTRYPOINT /home/deployer/gosrc/src/github.com/aries-auto/ariesautomotive/aries

EXPOSE 3000
