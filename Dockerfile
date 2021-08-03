FROM openjdk:11.0.11-jdk
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc python3 docker patch g++
RUN wget https://dl.google.com/go/go1.16.6.linux-amd64.tar.gz && tar -xvf go1.16.6.linux-amd64.tar.gz && mv go /usr/local/go && rm go1.16.6.linux-amd64.tar.gz
RUN wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x jq-linux64 && mv jq-linux64 /usr/bin/jq 
ENV PATH="/usr/local/go/bin:${PATH}"
ADD https://github.com/bazelbuild/bazel/releases/download/4.1.0/bazel_nojdk-4.1.0-linux-x86_64 /usr/local/bin/bazel
RUN chmod +x /usr/local/bin/bazel && bazel
ADD https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/docker-ce-cli_20.10.3~3-0~debian-buster_amd64.deb /tmp/docker.deb
RUN dpkg -i /tmp/docker.deb && rm /tmp/docker.deb
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
