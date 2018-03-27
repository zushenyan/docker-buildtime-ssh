FROM node:latest as build
ARG SSH_PRIVATE_KEY
WORKDIR /usr/app
COPY package.json yarn.lock ./
RUN mkdir /root/.ssh && \
  chmod 700 /root/.ssh && \
  echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa && \
  chmod 600 /root/.ssh/id_rsa && \
  touch /root/.ssh/known_hosts && \
  ssh-keyscan bitbucket.org > /root/.ssh/known_hosts && \
  yarn install && \
  rm -rf /root/.ssh

FROM node:latest
WORKDIR /usr/app
COPY --from=build /usr/app /usr/app
COPY . .
