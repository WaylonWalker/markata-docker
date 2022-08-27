# Markata Docker

`markta-docker` builds [markata](https://markata.dev) containers so that you can build
your markata site by installing no more than just docker on your system.

## Build your site using markata docker

``` bash
docker run -it --rm -v "$(pwd):/src" --workdir waylonwalker/markata:latest build
```

## Every Version

Every version of markata is built into a fresh docker image weekly.  We can
build using very first version of markata with the following command.

``` bash
docker run -it --rm -v "$(pwd):/src" --workdir waylonwalker/markata:0.1.0 build
```
