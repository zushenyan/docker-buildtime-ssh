# docker-buildtime-ssh
A tutorial listing ways to access ssh key during docker build time.

# Premise
Building a SSH key involved image is really hard. Mostly because, as a good developer, you want to follow the best security practice during image building phase. It is listed below:
- ssh key should not be saved in image.
- ssh key should not be save in cached layers.
- ssh key should not be able to be logged onto screen with `docker history`.

In this tutorial I assume you generate your ssh key without passphrase (empty passphrase `""`). 

If your ssh key is secured by passphrase, you will need to write scripts to handle auto-prompt interaction during image building phase. Dealing this scenario will raise the difficulty of the whole process. Due to it's complication, the hot-to will not be included in this repository.

# Demonstration

Open folder and execute `$> ./build-dockerfile.sh` or `$> ./build-docker-compose.sh` for demonstration.
