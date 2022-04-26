FROM node:14.17.4-slim

WORKDIR /app
COPY ganache-core.docker.cli.js /app/ganache-core.docker.cli.js 
COPY ganache-core.docker.cli.js.map /app/ganache-core.docker.cli.js.map
ENV DOCKER=true
EXPOSE 8545
ENTRYPOINT ["node" "/app/ganache-core.docker.cli.js"]
