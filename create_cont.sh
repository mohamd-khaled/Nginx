#!/bin/bash

docker build -t nginx_server:v1 .

docker container run -d --name website -p 80:80 nginx_server:v1 
