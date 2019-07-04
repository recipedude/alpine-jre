#!/bin/sh

docker build -t recipedude/alpine-jre:8.212.04-r0 -t recipedude/alpine-jre:latest .
docker push recipedude/alpine-jre:8.212.04-r0
docker push recipedude/alpine-jre:latest
