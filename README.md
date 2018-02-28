# Highly Dependable Systems Labs

## Instructions
### Lab 01
Open docker terminal and move to desired working directory
```
$ cd "desired/path/..."
```
Build an image from the dockerfile and run the container with a mounted volume on current folder
```
$ docker build -t javacrypto github.com/arturesteves/sec-labs && docker run --privileged --rm -it -v "$(pwd):/usr/src/my-app" javacrypto bash
```
Just to run the container
```
docker run --privileged --rm -it -v "$(pwd):/usr/src/my-app" javacrypto bash
```

##### Execute a java program
Move to one directory above the packages of the classes 
```
cd /tmp/sirs/src
```
Run program with command line arguments
```
java $PKG.<className> <N-arguements>
Example:
java $PKG.RandomImageGenerator /tmp/sirs/intro/outputs/otp.png 480 480
```
Export the input and output directory to the respective input e output directories on the host
```
/./cp_in-outputs.sh
```
