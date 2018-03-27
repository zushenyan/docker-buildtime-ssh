# bin/sh

docker-compose build \
  --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" \
   test && \
docker-compose run --rm test