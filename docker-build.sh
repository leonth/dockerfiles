# $1: directory containing Dockerfile
# $2: additional options for docker build (e.g. -no-cache)
sudo docker build $2 -t leonth/$1:`date +%Y-%m-%d` $1
sudo docker tag leonth/$1:`date +%Y-%m-%d` leonth/$1:latest
sudo docker images leonth/$1
