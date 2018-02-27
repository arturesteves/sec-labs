#
# Create a container with a java project for the lab 01 of Highly Dependable Systems 
#
#

# base image
FROM ubuntu

RUN apt-get update
RUN apt-get install git -y

# copy project files to be accessible inside the container
COPY Lab01/JavaCrypto /javacrypto

# install java dependencies
RUN apt-get install default-jre -y
RUN apt-get install default-jdk -y

# compile all java files 
RUN javac /javacrypto/src/pt/ulisboa/tecnico/meic/sirs

# create env. variables
RUN echo "export PKG=pt.ulisboa.tecnico.meic.sirs" >> ~/.bashrc
RUN echo "export INPUT=/javacrypto/intro/inputs" >> ~/.bashrc
RUN echo "export OUTPUT=/tmp/sirs/outputs" >> ~/.bashrc

# host directory
WORKDIR /tmp/sirs

# create folder on host
RUN mkdir /tmp/sirs/outputs
