# golden-image-buildx

As more companies migrate their developers to ARM based machines, a need arises for docker images to be compatible with multiple architectures. While intermediary/translation solutions like rosetta exist, there is a significant tradeoff in terms of build speed. 

This exploratory project investigates multi-architecture docker builds via GitHub Actions. It uses the official python slim-bullseye Dockerfile as a sample.

Images are pushed to: [this Docker Hub repository](https://hub.docker.com/r/aloutfi/golden-image-buildx)

Resources Utilized:

- [What is a golden image?](https://opensource.com/article/19/7/what-golden-image)
- [Multi-arch docker images the easy way, with Github Actions](https://dev.to/cloudx/multi-arch-docker-images-the-easy-way-with-github-actions-4k54)
- [Official python bullseye-slim docker image](https://github.com/docker-library/python/blob/master/3.10/slim-bullseye/Dockerfile)

