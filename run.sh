#!/bin/sh
#####
sh <update the project path>/bin/deploy demo-ecs-continuous-deployment
sh <update the project path>/bin/get_amis.sh

aws cloudformation create-stack --stack-name <name of stack> --template-body file://ecs-continuous-deployment.yaml --parameters ParameterKey=LaunchType,ParameterValue=EC2 ParameterKey=GitHubUser,ParameterValue=kvaibhawa ParameterKey=GitHubRepo,ParameterValue=example-on-ecs ParameterKey=GitHubBranch,ParameterValue=master ParameterKey=GitHubToken,ParameterValue=<github user token> ParameterKey=TemplateBucket,ParameterValue=demo-ecs-continuous-deployment --capabilities CAPABILITY_NAMED_IAM --region us-east-1
