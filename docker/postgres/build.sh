#!/bin/bash
docker network create public
docker-compose --env-file .env up -d --build
