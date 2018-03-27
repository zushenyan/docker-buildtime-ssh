FROM node:latest

RUN curl -L https://raw.githubusercontent.com/dockito/vault/master/ONVAULT > /usr/local/bin/ONVAULT && \
  chmod +x /usr/local/bin/ONVAULT

WORKDIR /usr/app
COPY package.json yarn.lock ./
RUN ONVAULT yarn install
COPY . .