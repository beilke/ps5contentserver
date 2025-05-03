FROM node:18-alpine

RUN apk update && apk add --no-cache \
    curl \
    jq \
    bash \
    # Removed: docker (CLI) since you're not using DinD
    procps && \
    npm install -g http-server

WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app/data && \
    touch /var/log/http-server.log  # Removed docker.log

# Simplified healthcheck.sh (remove Docker checks)
COPY healthcheck.sh /healthcheck.sh
RUN chmod +x /healthcheck.sh

CMD ["http-server", "/usr/src/app/data", "-p", "8080", "-c-1", "--showDir", "--cors", "--no-index"]