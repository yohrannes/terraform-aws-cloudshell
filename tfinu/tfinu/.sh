#!/bin/bash

CREDENTIALS=$(curl -s -H "Authorization: $AWS_CONTAINER_AUTHORIZATION_TOKEN" "$AWS_CONTAINER_CREDENTIALS_FULL_URI")

export AWS_ACCESS_KEY_ID=$(echo $CREDENTIALS | jq -r .AccessKeyId)
export AWS_SECRET_ACCESS_KEY=$(echo $CREDENTIALS | jq -r .SecretAccessKey)
export AWS_SESSION_TOKEN=$(echo $CREDENTIALS | jq -r .Token)
export AWS_REGION="sa-east-1"

chmod 600 $HOME/.aws

sudo tee $HOME/.aws/credentials > /dev/null <<'EOF'
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
aws_session_token = $AWS_SESSION_TOKEN
EOF

chmod 600 $HOME/.aws/credentials

sudo tee $HOME/.aws/config > /dev/null <<'EOF'
[default]
region=sa-east-1
output=json
EOF

chmod 600 $HOME/.aws/config

aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID" --profile default
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY" --profile default
aws configure set aws_session_token "$AWS_SESSION_TOKEN" --profile default
aws configure set region "$AWS_REGION" --profile default

docker build -t tf-container . -f tfinu/Dockerfile
docker run -it --rm\
  -e AWS_ACCESS_KEY_ID\
  -e AWS_SECRET_ACCESS_KEY\
  -e AWS_SESSION_TOKEN\
  -v $HOME/.aws:/root/.aws \
  -v $PWD:/app \
  tf-container
