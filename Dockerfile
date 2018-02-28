#
# Create a container with a java project for the lab 01 of Highly Dependable Systems 
#
#

# base image
FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install vim -y

# copy project and other files to be accessible inside the container
COPY JavaCrypto /tmp/sirs
COPY cp_in-outputs.sh cp_in-outputs.sh

# install java dependencies
RUN apt-get install default-jre -y
RUN apt-get install default-jdk -y

# compile all java files 
RUN javac /tmp/sirs/src/pt/ulisboa/tecnico/meic/sirs/*

# create env. variables
RUN echo "export PKG=pt.ulisboa.tecnico.meic.sirs" >> ~/.bashrc
RUN echo "export home=/usr/src/my-app" >> ~/.bashrc

# make file executable
RUN chmod +x cp_in-outputs.sh 

# create directories to store files on host
RUN mkdir /usr/src/my-app/inputs
RUN mkdir /usr/src/my-app/outputs

WORKDIR /usr/src/my-app