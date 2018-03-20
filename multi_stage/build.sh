# bin/sh

docker build -t multi-stage-test:latest --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" .