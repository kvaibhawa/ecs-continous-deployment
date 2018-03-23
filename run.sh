#!/bin/sh
#####
sh ~/environment/ecs-continous-deployment/bin/deploy ecs-continuous-deployment
sh ~/environment/ecs-continous-deployment/bin/get_amis.sh
#sh ~/environment/ecs-continous-deployment/bin/createstack.sh stack-ecs-efs-asg 
##aws cloudformation create-stack --stack-name stack-ecs-efs-asg --template-body ecs-continuous-deployment.yaml --parameters ParameterKey=LaunchType,ParameterValue=EC2 ParameterKey=GitHubUser,ParameterValue=kvaibhawa ParameterKey=GitHubRepo,ParameterValue=example-on-ecs ParameterKey=GitHubBranch,ParameterValue=master ParameterKey=GitHubBranch,ParameterValue=master ParameterKey=GitHubToken,ParameterValue=1476a4f217a29ad9a4dc2fd93c736c8b4b009739 ParameterKey=TemplateBucket,ParameterValue=master --capabilities CAPABILITY_NAMED_IAM --region us-east-1

aws cloudformation create-stack --stack-name stack-ecs-efs-asg --template-body file://ecs-continuous-deployment.yaml --parameters ParameterKey=LaunchType,ParameterValue=EC2 ParameterKey=GitHubUser,ParameterValue=kvaibhawa ParameterKey=GitHubRepo,ParameterValue=example-on-ecs ParameterKey=GitHubBranch,ParameterValue=master ParameterKey=GitHubToken,ParameterValue=1476a4f217a29ad9a4dc2fd93c736c8b4b009739 ParameterKey=TemplateBucket,ParameterValue=ecs-continuous-deployment --capabilities CAPABILITY_NAMED_IAM --region us-east-1

