#!/bin/sh

docker build -t recipedude/alpine-jre:3.10-jre11 -t recipedude/alpine-jre:latest .
docker push recipedude/alpine-jre:3.10-jre11
docker push recipedude/alpine-jre:latest
