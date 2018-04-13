# Simple example for docker-compose

## Overview

Simple example taken from [Get started with Docker Compose](https://docs.docker.com/compose/gettingstarted/).

It will build a local image based on _python:3.4-alpine_, and use another one which is _redis:alpine_.

## Usage

### Build

It will build local images only. The _redis_ image don't need to be built, it will be pulled from [Docker Hub](https://hub.docker.com/) (Docker public registry).

> docker-compose build

Tip :  
If behind a proxy, add _build-arg_ like : `docker-compose build --build-arg=ip:port`.  
Indeed, the command `pip install -r requirements.txt` needs to fetch external resources for Python.

### Run

It will run containers locally.

> docker-compose up -d

### Stop

It will stop the containers.

> docker-compose down

### Update images

In case some images needs to be refreshed, it will check for newer versions on Docker Hub.

> docker-compose pull
