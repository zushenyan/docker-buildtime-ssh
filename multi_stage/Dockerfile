FROM node:latest as build

ARG SSH_PRIVATE_KEY
RUN mkdir /root/.ssh && \
  chmod 700 /root/.ssh && \
  echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa && \
  chmod 600 /root/.ssh/id_rsa && \
  touch /root/.ssh/known_hosts && \
  ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN ssh -T git@github.com || true

FROM node:latest
CMD echo "done!"
