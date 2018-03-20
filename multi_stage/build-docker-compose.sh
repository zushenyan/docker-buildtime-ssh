# bin/sh

docker-compose build --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" test && \
docker rmi $(docker images -f "dangling=true" -q) && \
docker-compose run --rm test