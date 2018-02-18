FROM ubuntu:16.04

LABEL maintainer tomwillfixit

# Update and install shellinabox
RUN apt-get update && apt-get install wget shellinabox -y

# Install ctop
RUN wget https://github.com/bcicen/ctop/releases/download/v0.7/ctop-0.7-linux-amd64 -O /usr/bin/ctop && chmod +x /usr/bin/ctop

EXPOSE 8888

# Copy entrypoint script into container image
COPY entrypoint.sh /tmp/entrypoint.sh

# Start Shellinabox
ENTRYPOINT ["/tmp/entrypoint.sh"]

