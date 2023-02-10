# $1 - username
# $2 - imagename
# $3 - tag - branch name
# IMAGE_TAG=echo "$3" | sed -r 's/[//]+/_/g'

# bash ./scripts/build-image.sh "ps332" "prabhpreet332/github-ci-cd" "refs/heads/feature/tag-creation" 

# BRANCH_NAME=$3
# IMAGE_TAG=${$3 | sed -r 's/[//]+/_/g'}
# IMAGE_TAG="$3" | tr / _

REPOSITORY_NAME=$2
ARR_REPOSITORY_NAME=(${REPOSITORY_NAME///// })
# echo $ARR_REPOSITORY_NAME
IMAGE_NAME=${ARR_REPOSITORY_NAME[1]}

IMAGE_TAG=`echo "$3" | sed -r 's/[//]+/_/g'`
echo "Building image for image:tag -> " $IMAGE_NAME $IMAGE_TAG  

docker build -t $IMAGE_NAME .
docker tag $IMAGE_NAME $1/$IMAGE_NAME:$IMAGE_TAG
docker push $1/$IMAGE_NAME:$IMAGE_TAG
