FROM debian:wheezy

# get some packages we'll use
RUN apt-get update -q
RUN apt-get install -qy htop curl wamerican-huge mysql-client

# install Docker CLI tools (though we get the whole thing)
RUN curl -sSL https://get.docker.com/ | sh

# get the Joyent script to configure Docker CLI client
RUN curl -O https://raw.githubusercontent.com/joyent/sdc-docker/master/tools/docker-client-env && chmod +x docker-client-env


# ip address show
# `./docker-client-env root@10.88.88.200`