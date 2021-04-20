# CI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?color=blue)](https://opensource.org/licenses/MIT)
![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/EON-COM/gitlab-ci-bazel.svg?color=blue)
[![](https://images.microbadger.com/badges/image/eoncom/gitlab-ci-bazel.svg)](https://microbadger.com/images/eoncom/gitlab-ci-bazel "Get your own image badge on microbadger.com")

# Supported tags and respective `Dockerfile` links

[`gitlab-ci-bazel:0.2` `gitlab-ci-bazel:latest` (*Dockerfile*)](https://github.com/EON-COM/gitlab-ci-bazel/blob/master/Dockerfile)


# Quick reference

-	**Where to get help**:  
	[the Docker Community Forums](https://forums.docker.com/), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack/), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

-	**Where to file issues**:  
	[https://github.com/EON-COM/gitlab-ci-bazel/issues](https://github.com/EON-COM/gitlab-ci-bazel/issues)

-	**Maintained by**:  
	[EON-COM](https://github.com/EON-COM/gitlab-ci-bazel/issues)

-	**Supported architectures**: ([more info](https://github.com/docker-library/official-images#architectures-other-than-amd64))  
	[`amd64`](https://hub.docker.com/r/eoncom/gitlab-ci-bazel/)

-	**Supported Docker versions**:  
	[the latest release](https://github.com/docker/docker-ce/releases/latest) (down to 1.6 on a best-effort basis)

# What is gitlab-ci-bazel?

This is the image that the internal gitlab-ci uses to build a java service. 

### Tools installed inside the image

- openjdk 11
- go 1.16.0
- bazel 3.7.2
- python 3
- docker 20.20
- gcc
- taskfile

# License

gitlab-ci-bazel is open source and released under the terms of the [MIT](https://opensource.org/licenses/MIT).

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
