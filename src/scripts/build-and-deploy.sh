#!/bin/bash
ACCOUNT_URL=${AWS_ECR_REGISTRY_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com
if cat ~/.docker/config.json | grep "${ACCOUNT_URL}" > /dev/null 2>&1 ; then
    echo "Credential helper is already installed"
else
    aws ecr get-login-password --region "${AWS_DEFAULT_REGION}" "$@" | docker login --username AWS --password-stdin "${ACCOUNT_URL}"
fi
IMAGE_AND_TAG=${AWS_RESOURCE_NAME_PREFIX}:${CIRCLE_SHA1}
docker build -f $PARAM_DOCKERFILE . -t $IMAGE_AND_TAG
docker tag $IMAGE_AND_TAG $ACCOUNT_URL/$IMAGE_AND_TAG
docker push $ACCOUNT_URL/$IMAGE_AND_TAG