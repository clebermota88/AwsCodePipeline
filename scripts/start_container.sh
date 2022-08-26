#!/bin/bash

# Certifica-se que o AWS CLI esteja instalado.
sudo apt install awscli -y || true

# Autenticando no ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 805691449994.dkr.ecr.us-east-1.amazonaws.com

# Inicializando container
docker run --name website-onepage -itd -p 8080:80 805691449994.dkr.ecr.us-east-1.amazonaws.com/website-onepage:latest