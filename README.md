# ArchStrike

An Arch Linux repository for security professionals and enthusiasts

See: https://archstrike.org

# About Arch Strike Docker

I wanted a raw Arch base image + ArchStrike with no bloat added.

Based on: https://hub.docker.com/r/pritunl/archlinux/

( See: https://wiki.archlinux.org/index.php/Docker#ArchLinux_image_with_snapshot_repository )

This Dockerfile follows these steps: https://archstrike.org/wiki/setup

# Running it

## Via Docker
```
docker run --rm -it haykuro/archstrike-docker:latest
```

## Via Git:
```
git clone git@github.com:haykuro/archstrike-docker.git
cd archstrike-docker
# Make sure you have a docker environment set.. (see: https://docs.docker.com/machine/)
docker build -t archstrike:latest .
docker run --rm -it archstrike:latest
```
