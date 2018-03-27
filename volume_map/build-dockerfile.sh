# bin/sh

docker build -t volume-map-test:latest . && \
docker run \
  --rm \
  -v ~/.ssh:/root/.ssh volume-map-test:latest \
  bash -c "yarn install && node index.js"