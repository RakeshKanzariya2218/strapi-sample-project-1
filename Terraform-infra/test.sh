



#!/bin/bash
set -e
yum update -y
yum install -y docker aws-cli
systemctl start docker
systemctl enable docker
sleep 5
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 132866222051.dkr.ecr.us-east-1.amazonaws.com
docker volume create strapi-data
docker pull 132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag}
docker rm -f strapi || true
docker run -dt -p 80:1337 -v strapi-data:/srv/app --name strapi 132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag}

