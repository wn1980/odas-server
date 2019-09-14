#!/usr/bin/env bash

docker-compose -f docker-compose.yml down
docker system prune -f
docker-compose -f docker-compose.yml up -d --build odas-server
