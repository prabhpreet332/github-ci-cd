# $1 - username
# $2 - imagename
# $3 - tag - branch name
docker build -t $2 .
docker tag $2 $1/$2:$3
docker push $1/$2:$3
