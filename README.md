# About Arch Strike Docker

There wasn't a close-to-official arch strike docker image available.

This is about as raw and barebones as it gets..

# Running it

```
git clone git@github.com:haykuro/archstrike-docker.git
cd archstrike-docker
docker build -t archstrike:latest .
docker run --rm -it archstrike:latest
```
