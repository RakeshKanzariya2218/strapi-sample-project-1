
#!/bin/bash
yum update -y
yum install docker -y
yum install aws-cli -y
systemctl start docker
systemctl enable docker
sleep 5
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 132866222051.dkr.ecr.us-east-1.amazonaws.com
docker volume create strapi-data
docker pull 132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag}
docker run --rm -v strapi-data:/srv/app 132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag} strapi new /srv/app --quickstart --no-run
docker run -dt -p 1337:1337 -v strapi-data:/srv/app --name strapi 132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag}
docker run -d \
  -p 1337:1337 \
  -v strapi-data:/srv/app \
  -e APP_KEYS="$(openssl rand -hex 16),$(openssl rand -hex 16),$(openssl rand -hex 16),$(openssl rand -hex 16)" \
  -e ADMIN_JWT_SECRET="$(openssl rand -hex 16)" \
  -e API_TOKEN_SALT="$(openssl rand -hex 16)" \
  -e TRANSFER_TOKEN_SALT="$(openssl rand -hex 16)" \
  -e ENCRYPTION_KEY="$(openssl rand -hex 32)" \
  -e FLAG_NPS=true \
  -e FLAG_PROMOTE_EE=true \
  --name strapi \
  132866222051.dkr.ecr.us-east-1.amazonaws.com/strapi/strapi:${docker_image_tag}
