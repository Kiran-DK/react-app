#!/bin/bash

docker build -t react-app . 
docker run -d -p 80:3000 -t react-app 

