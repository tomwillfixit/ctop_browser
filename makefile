build:
	docker build -t ctop_browser:latest .

start:
	docker run -d \
	--name ctop \
	-p 8888:8888 \
        --cpus="1" \
	--cpuset-cpus="0" \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	ctop_browser:latest

cleanup:
	docker rm -f ctop 

logs:
	docker logs -f ctop 

