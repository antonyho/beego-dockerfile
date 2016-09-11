# Base image is in https://registry.hub.docker.com/_/golang/
# Refer to https://blog.golang.org/docker for usage
FROM golang:1.7-wheezy
MAINTAINER Antony Ho ntonyworkshop@gmail.com

# ENV GOPATH /go

# Install beego & bee
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
