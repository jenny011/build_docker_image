# Useful docker commands
gcloud compute ssh --ssh-key-file ~/.ssh/cloud-computing --zone europe-west4-a ubuntu@jz-docker

DOCKER_BUILDKIT=0 sudo docker build --no-cache -f Dockerfile .
sudo docker run -t -d --name myapp jennyjyz/elastic-ml:latest
sudo docker exec -it myapp /bin/bash
sudo docker stop myapp && sudo docker rm myapp
sudo docker image rm [hash]

chmod +x ./setup/install_docker.sh
sudo docker images
sudo docker ps -a
sudo docker compose build --no-cache --progress=plain app < Dockerfile 2>&1 | tee ~/build.log
sudo docker-compose build --no-cache app < Dockerfile

# # https://stackoverflow.com/questions/28349392/how-to-push-a-docker-image-to-a-private-repository
# sudo docker login --username [username]
# sudo docker tag [hash] [tagname]
# sudo docker push [tagname]
