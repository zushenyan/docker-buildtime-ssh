# bin/sh

docker rm -f vault; \
docker-compose down; \
docker-compose run -d vault && \
docker-compose run --rm test