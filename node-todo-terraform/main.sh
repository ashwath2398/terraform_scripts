#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo apt install nodejs -y
sudo apt install npm

mkdir nodeapp
git clone https://github.com/LondheShubham153/node-todo-cicd.git
cd node-todo-cicd/

docker build -t flask-app:latest .
docker run -d -p 80:80 flask-app:latest