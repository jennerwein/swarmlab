DOCKERHUB_NAME=zdih
TAG=latest
NAME=loadbalancer1

docker login

docker build --tag ${DOCKERHUB_NAME}/${NAME}:${TAG} .

docker push ${DOCKERHUB_NAME}/${NAME}:${TAG}