FROM alpine:3.10
MAINTAINER sean@wenzel.net


RUN apk upgrade --update-cache; \
	mkdir /opt; cd /opt; \
	wget https://download.java.net/java/early_access/alpine/28/binaries/openjdk-11+28_linux-x64-musl_bin.tar.gz \
	&& tar zxf openjdk-11+28_linux-x64-musl_bin.tar.gz \
  && ln -s jdk-11 java \
  && rm -f openjdk-11+28_linux-x64-musl_bin.tar.gz

ENV JAVA_HOME=/opt/java
ENV PATH="$PATH:$JAVA_HOME/bin"

CMD ["java", "-version"]