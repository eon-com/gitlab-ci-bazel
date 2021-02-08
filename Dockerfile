FROM openjdk:11-jdk
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc python3 docker
ADD https://github.com/bazelbuild/bazel/releases/download/4.0.0/bazel_nojdk-4.0.0-linux-x86_64 /usr/local/bin/bazel
RUN chmod +x /usr/local/bin/bazel && bazel
ADD https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/docker-ce-cli_20.10.3~3-0~debian-buster_amd64.deb /tmp/docker.deb
RUN dpkg -i /tmp/docker.deb && rm /tmp/docker.deb
