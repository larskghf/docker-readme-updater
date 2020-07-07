[![Build Status](https://drone.kghf.io/api/badges/larskghf/dockerhub-readme-updater/status.svg)](https://drone.kghf.io/larskghf/dockerhub-readme-updater)
[![Docker Pulls](https://img.shields.io/docker/pulls/kghf/dockerhub-readme-updater)](https://hub.docker.com/r/kghf/dockerhub-readme-updater)
## DockerHub Readme Updater

Docker container to automatically update readme in docker hub

---

GitHub Project: https://github.com/larskghf/dockerhub-readme-updater

DockerHub: https://hub.docker.com/repository/docker/kghf/dockerhub-readme-updater

---
Quick Start:
```bash
docker run \
    -e DOCKER_REPO=user/repo \
    -e DOCKER_USERNAME=foo \
    -e DOCKER_PASSWORD=bar \
    -v /path/to/your/README.md:/README.md \
kghf/dockerhub-readme-updater
```