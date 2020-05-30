# listusb-docker

Docker running image based on Debian Buster (10)

## Requirements
- [Docker](https://docs.docker.com/engine/install/)

If installing on Linux, it is recommended to check the [post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/)

## Build
`docker build --tag listusb .`

## Run
`docker run -d --name listusb listusb`

## Access running docker instance
`docker exec -ti listusb /bin/bash`

At this point you are inside the docker bash and can play around as
you wish and when done leave the container and return to the host with:
`exit`

## Stop
`docker stop listusb`

## Remove
Remove docker container 
`docker rm listusb`

Remove docker image
`docker rmi listusb`

If needed, clear all the images and containers in the system
`docker system prune`