Demo ECS Continuous Deployment with Github, Code Build and Pipeline.

This Demo Example will create ECS contious deployment pipeline with nested cloudformation template of vpc, lb, ecs-cluster, service and deployment pipeline.

- Clone in local folder.
- Edit and update run.sh file for "update the project path" to execute deploy and get_amis.
- Edit and update run.sh file for "GitHubUser", "GitHubRepo - you can point to your own or use example-on-ecs as sample" "GitHubBranchc", "name of stack", "github user token" and bucket name (If you are chaning then update the line 1 to execute deploy).
- Setup aws configure with Access key ID	and Secret access key with Region.
- execute the run.sh to build

This usage https://github.com/kvaibhawa/example-on-ecs docker project with perl dependencies and also have php frontend for verification.
This project includes a sample TaskDefinition has container definitions with test command which executes and displays on frontend.

There is a loggroup created starting with stack name, also code build logs can be tracked.


Go to output of ecs-continuous-deployment.yaml to grab the pipeline URL and app service url.

Note: If you have existing vpc then need to update ecs-continuous-deployment.yaml, pass as an parameters and respective updates from nested templates.
