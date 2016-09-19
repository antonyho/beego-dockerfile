# Base image is in https://registry.hub.docker.com/_/golang/
# Refer to https://blog.golang.org/docker for usage
FROM golang:1.7-wheezy
MAINTAINER Antony Ho ntonyworkshop@gmail.com

# ENV GOPATH /go

ARG app_name=app

# Install beego & bee
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee

# Expose port to public
EXPOSE 8080

# Copy the source code from current directory to /go/src in container
# Place the Dockerfile into source code directory and build Docker image
RUN mkdir -p /go/src/$app_name
COPY . /go/src/$app_name
WORKDIR /go/src/$app_name

# Launch Beego when the container is created
CMD bee run
