# bin/sh

docker rm -f vault; \
docker run --name vault -d -p 14242:3000 -v ~/.ssh:/vault/.ssh dockito/vault && \
docker-compose build --no-cache