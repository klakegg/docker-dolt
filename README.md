# Dolt

Simple packaging of [Dolt](https://github.com/liquidata-inc/dolt) for Docker.


## Features

* Allows running as unprivileged user.


## Example of use

Initiating a new repository:

```shell
docker run --rm -it \
    -v $(pwd):/work \
    -u $(id -u) \
    klakegg/dolt \
    init
```


Running as SQL server:

```shell
docker run --rm -it \
    -v $(pwd):/work \
    -p 3306:3306 \
    -u $(id -u) \
    klakegg/dolt \
    sql-server -H 0.0.0.0
```


## Environment variables

* `DOLT_ROOT_PATH` - Overriding user home directory in image. Default `/home`