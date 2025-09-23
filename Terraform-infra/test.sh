


#!/bin/bash
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker

sleep 5

echo "${dockerhub_token}" | docker login -u "${dockerhub_username}" --password-stdin
docker volume create strapi-data
docker pull rakeshkanzariya/rakesh_strapi:${docker_image_tag}
docker run --rm -v strapi-data:/srv/app rakeshkanzariya/rakesh_strapi:${docker_image_tag} strapi new /srv/app --quickstart --no-run
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
  rakeshkanzariya/rakesh_strapi:${docker_image_tag}

  