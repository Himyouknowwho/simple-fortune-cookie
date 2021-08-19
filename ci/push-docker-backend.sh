#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/simple-fortune-cookie-backend-${GIT_COMMIT::4}" 
docker push "$docker_username/simple-fortune-cookie-backend:latest" &
wait