# Concise Container Metrics using ctop and shellinabox

![Alt Text](https://github.com/tomwillfixit/ctop_browser/blob/master/ctop.gif)

What is ctop?

ctop is available from https://ctop.sh and is described as "concise commandline monitoring for containers".

Ctop is a top like interface for container metrics. There are already a number of ways to view container metrics in the browser such as CAdvisor but ctop offers a nice simple and clean interface.  Using shellinabox you can expose ctop to the browser.

# Disclaimer

The following is just for personal use on a developer environment. The ctop container is started with a mounted docker.sock file. Anyone who can access http://localhost:8888/ctop will be able to stop containers, view logs and more.

# Getting started

The first step is to install Docker.  Instructions can be found [here](https://docs.docker.com/engine/installation/#desktop).
This will only take a few minutes.

Check Docker is installed 
```
docker info
```
## In a rush ... 

If you have zero interest in building the image then just run the following and open a browser : http://localhost:8888/ctop
```
docker run -d -P -v /var/run/docker.sock:/var/run/docker.sock thshaw/ctop
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

See Disclaimer above.  You can press enter and perform actions such as viewing container logs, stopping containers and viewing metrics of individual containers.

![Alt Text](https://github.com/tomwillfixit/ctop_browser/blob/master/single.gif)

## Watch the logs
```
make logs
```

## Stop and remove container
```
make cleanup
```
