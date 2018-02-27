FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
COPY JavaCrypto /javacrypto
RUN apt-get install default-jre
RUN apt-get install default-jdk
WORKDIR /javacrypto/src/pt/ulisboa/tecnico/meic/sirs
RUN find -name "*.java" > tocompile.txt
RUN javac @tocompile.txt
#WORKDIR /javacrypto
WORKDIR /usr/src/my-app

