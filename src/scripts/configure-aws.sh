#!/bin/bash
aws configure set aws_access_key_id \
    "$AWS_ACCESS_KEY_ID" \
    --profile "$PARAM_PROFILE"

aws configure set aws_secret_access_key \
    "$AWS_SECRET_ACCESS_KEY" \
    --profile "$PARAM_PROFILE"

if [ -n "${AWS_SESSION_TOKEN}" ]; then
    aws configure set aws_session_token \
        "${AWS_SESSION_TOKEN}" \
    --profile "$PARAM_PROFILE"
fi

aws configure set default.region "$AWS_DEFAULT_REGION" \
    --profile "$PARAM_PROFILE"
aws configure set region "$AWS_DEFAULT_REGION" \
    --profile "$PARAM_PROFILE"