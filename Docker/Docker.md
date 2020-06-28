Docker
================

## Introduction

Docker is a tool used to create

## Getting Started

<https://docs.docker.com/get-started/>

  - [mac](https://docs.docker.com/docker-for-mac/install/)

  - [windows](https://docs.docker.com/docker-for-windows/install/)

  - Download Docker

  - Run hello world

<!-- end list -->

``` bash
$ docker run hello-world

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
0e03bdcc26d7: Pull complete 
Digest: sha256:6a65f928fb91fcfbc963f7aa6d57c8eeb426ad9a20c7ee045538ef34847f44f1
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

``` bash
$ docker ps --all

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                     PORTS               NAMES
f1431e6ed849        hello-world         "/hello"            3 minutes ago       Exited (0) 3 minutes ago                       xenodochial_bartik
```

  - Basic commands

`docker run image-name`

`docker run -d image-name`

  - Run
Rstudio

[hub.docker.com/r/rocker/rstudio](https://hub.docker.com/r/rocker/rstudio)

`docker run -d -p 8787:8787 -e PASSWORD=yourpasswordhere
rocker/rstudio:3.6.0`

RStudio can now be opened by going to `localhost:8787` in a web browser.

`docker run -d -p 8787:8787 -e PASSWORD=yourpasswordhere
rocker/rstudio:devel`

### Reproducible Research

For reproducible research the envioronment used each time to run the
code should match as much as possible. Things like the version of R, the
version of indiivdual libraries can have an effect on the final results.

## Creating Image

To build a Docker image, you will need to create a Dockerfile. This file
is essentially a configuration file determining what libraries, etc..
should be included in the image.

### Dockerfile

## Sharing Image

## CI Git & Travis
