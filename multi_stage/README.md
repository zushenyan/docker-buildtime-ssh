# Multi Stage

As we know docker image is formed by many layers, and if you don't care if SSH keys will be exploited in `docker history` or be a part of an layer. What you want is to only **publish an final image without SSH key involed**, this one might suit your need.

How it does is to tag `dockerfile` as many stages, and
1. Tag SSH key involved phrase as first stage.
2. Tag the `npm install` phrase as second stage and remove the SSH related files in this stage.
3. Copy the `node_modules` from stage 2. Do the rest things and tag this phrase as final stage.

This method is typically suitable for local use and to publish final image to somewhere else.

### Pros
- No SSH keys in Final image.

### Cons
- SSH keys will be exploited in `docker history`.
- SSH keys will be in some cache layers on local machine.