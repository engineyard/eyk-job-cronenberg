### Clone the repo
`git clone git@github.com:engineyard/eyk-job-cronenberg`

### Build docker image
`docker build -t <imagename> .`
e.g. docker build -t myjobs .

### Push to docker degistry
`docker push  <dockerhubusername>/<imagename>:<tag>`
e.g. docker push sergeyabrahamyandf/myjobs:v1

### Create a job application in eyk
`eyk apps:create <appname> --no-remote`
e.g. eyk apps:create myjobs --no-remote

### Deploy the app using docker image created earlier
`e.g eyk builds:create <dockerhubusername>/<imagename>:<tag> -a <appname> --procfile='cronenberg: cronenberg /cron-jobs.yml’`
e.g eyk builds:create sergeyabrahamyandf/myjobs:v1 -a myjobs --procfile='cronenberg: cronenberg /cron-jobs.yml’

### Test
`eyk logs -a <appanme>`
e.g. eyk logs -a myjobs

### Configure schedule and scripts
Modify cron-jobs.yml to change the schedule and command. 
You can use bash commands directly or execute a script/program.





