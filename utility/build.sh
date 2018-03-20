# bin/sh

docker run --name vault -d -p 172.17.0.1:14242:3000 -v ~/.ssh:/vault/.ssh dockito/vault; \
docker build -t utility_test:latest . && \
docker run --rm utility_test:latest