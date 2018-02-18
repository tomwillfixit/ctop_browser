# Concise Container Metrics using ctop and shellinabox

![Alt Text](https://github.com/tomwillfixit/ctop_browser/blob/master/ctop.gif)

What is ctop?

ctop is available from https://ctop.sh and is described as "concise commandline monitoring for containers".

Ctop is a top like interface for container metrics. There are already a number of ways to view container metrics in the browser such as CAdvisor but ctop offers a nice simple and clean interface.  Using shellinabox you can expose ctop to the browser.

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
