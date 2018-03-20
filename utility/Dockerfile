FROM node:latest

RUN curl -L https://raw.githubusercontent.com/dockito/vault/master/ONVAULT > /usr/local/bin/ONVAULT && \
  chmod +x /usr/local/bin/ONVAULT
RUN ONVAULT ssh -T git@github.com || true
CMD echo "done!"