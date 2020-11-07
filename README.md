# latex-rechnung-docker

## On Docker Hub
[hub.docker.com/repository/docker/d1351r43/latex-rechnung-docker](https://hub.docker.com/repository/docker/d1351r43/latex-rechnung-docker#)

## Usage

This docker image adds support for [rechnung.sty](https://www.forwiss.uni-passau.de/~berberic/TeX/Rechnung/index.html) to `blang/latex:ubuntu`. In order to use it, change the variable `IMAGE` in `latexdockercmd.sh` to `d1351r43/latex-rechnung-docker:latest`

```bash
#!/bin/sh
IMAGE=d1351r43/latex-rechnung-docker:latest
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"
```
Visit https://github.com/blang/latex-docker for full documentation on how to use the LaTeX container in general. 