#!/bin/bash

if [[ ! -e /usr/src/my-app/inputs && ! -e /usr/src/my-app/outputs]]; then
	mkdir /usr/src/my-app/inputs
	mkdir /usr/src/my-app/outputs
fi

cp /tmp/sirs/intro/inputs/* /usr/src/my-app/inputs
cp /tmp/sirs/intro/outputs/* /usr/src/my-app/outputs