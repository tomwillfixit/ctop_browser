# Container Metrics using ctop and shellinabox

![Alt Text](https://github.com/tomwillfixit/ctop_browser/blob/master/ctop.gif)

What is ctop?

It is a top like interface for container metrics.  It can be run on the command line and is really useful if you just want to see what is currently running on a node and what resources each container is using.  

Using shellinabox you can expose ctop to the browser.

# Getting started

The first step is to install Docker.  Instructions can be found [here](https://docs.docker.com/engine/installation/#desktop).
This will only take a few minutes.

Check Docker is installed 
```
docker info
```

## Build container image
```
make build
```

## Start container
```
make start
```

Open a browser and navigate to : http://localhost:8888/ctop

## Watch the logs
```
make logs
```

## Stop and remove container
```
make cleanup
```
