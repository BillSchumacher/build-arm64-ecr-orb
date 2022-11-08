#!/bin/bash
ACCOUNT_URL=${AWS_ECR_REGISTRY_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com
if cat ~/.docker/config.json | grep "${ACCOUNT_URL}" > /dev/null 2>&1 ; then
    echo "Credential helper is already installed"
else
    aws ecr get-login-password --region "${AWS_DEFAULT_REGION}" "$@" | docker login --username AWS --password-stdin "${ACCOUNT_URL}"
fi
IMAGE_AND_TAG=${AWS_RESOURCE_NAME_PREFIX}:${PARAM_TAG_PREFIX}${CIRCLE_SHA1}

if [[ -z "${PARAM_ENVFILE}" ]]; then
  docker build -f $PARAM_DOCKERFILE . -t $IMAGE_AND_TAG
else
  docker build  $(cat $PARAM_ENVFILE | while read line; do out+="--build-arg $line"; done; echo $out; out="") . -t $IMAGE_AND_TAG
fi

docker tag $IMAGE_AND_TAG $ACCOUNT_URL/$IMAGE_AND_TAG
docker push $ACCOUNT_URL/$IMAGE_AND_TAG