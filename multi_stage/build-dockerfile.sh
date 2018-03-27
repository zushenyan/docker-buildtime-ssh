# bin/sh

docker build \
  -t multi-stage-test:latest \
   --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" \
   . && \
docker run --rm multi-stage-test:latest bash -c "node index.js"
