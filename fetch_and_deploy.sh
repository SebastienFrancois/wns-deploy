#!/bin/sh
# fetch-and-deploy.sh

GATEWAY_PORT=8001

docker compose -f docker-compose.prod.yml down && \
    docker compose -f docker-compose.prod.yml pull && \
    GATEWAY_PORT=$GATEWAY_PORT docker compose -f docker-compose.prod.yml up -d;