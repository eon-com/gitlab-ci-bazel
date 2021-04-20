FROM openjdk:11-jdk
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc python3 docker patch g++ jq
RUN wget https://dl.google.com/go/go1.16.linux-amd64.tar.gz && tar -xvf go1.16.linux-amd64.tar.gz && mv go /usr/local/go && rm go1.16.linux-amd64.tar.gz && echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
ADD https://github.com/bazelbuild/bazel/releases/download/3.7.2/bazel_nojdk-3.7.2-linux-x86_64 /usr/local/bin/bazel
RUN chmod +x /usr/local/bin/bazel && bazel
ADD https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/docker-ce-cli_20.10.3~3-0~debian-buster_amd64.deb /tmp/docker.deb
RUN dpkg -i /tmp/docker.deb && rm /tmp/docker.deb
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
