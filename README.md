# Highly Dependable Systems Labs

## Instructions
### Lab 01
Open docker terminal and move to desired working directory
```
$ cd "desired/path/..."
```
Build an image from the dockerfile
```
$ docker build -t javacrypto github.com/arturesteves/sec-labs -f Lab01/Dockerfile
```
Run the container with a mounted volume on current folder:
```
$ docker run --rm -it -v "$(pwd):/tmp/sirs" javacrypto bash
```