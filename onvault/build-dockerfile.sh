# bin/sh

docker rm -f vault; \
docker run \
  -d \
  --name vault \
  -p 14242:3000 \
  -v ~/.ssh:/vault/.ssh dockito/vault && \
docker build -t onvault_test:latest . && \
docker run --rm onvault_test node index.js
