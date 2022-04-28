#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REVISION=$1
DEPLOYMENT_BUCKET=nodejscodedeploy
DEPLOYMENT_GROUP=web-nodejs
APPLICATION_NAME=nodejs
aws deploy create-deployment --application-name $APPLICATION_NAME \
	--s3-location bucket="$DEPLOYMENT_BUCKET",key="$REVISION",bundleType=zip \
	--deployment-group-name $DEPLOYMENT_GROUP --deployment-config-name CodeDeployDefault.OneAtATime
