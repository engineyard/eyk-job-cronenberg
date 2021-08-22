### Clone the repo
`git clone git@github.com:engineyard/eyk-job-cronenberg`

### Build docker image
`docker build -t <dockerregistryusername>/<imagename>:<tag> .`<br/>
e.g. docker build -t sergeyabrahamyandf/myjobs:v1 .

### Push to docker registry
`docker push  <dockerregistryusername>/<imagename>:<tag>`<br/>
e.g. docker push sergeyabrahamyandf/myjobs:v1

### Create a job application in eyk
`eyk apps:create <appname> --no-remote`<br/>
e.g. eyk apps:create myjobs --no-remote

### Disable routing
`eyk routing:disable -a <appname>`<br/>
e.g. eyk routing:disable -a myjobs

### Deploy the app using docker image created earlier
`e.g eyk builds:create <dockerregistryusername>/<imagename>:<tag> -a <appname> --procfile='cronenberg: cronenberg /cron-jobs.yml’`<br/>
e.g eyk builds:create sergeyabrahamyandf/myjobs:v1 -a myjobs --procfile='cronenberg: cronenberg /cron-jobs.yml'

### Test
`eyk logs -a <appname>`<br/>
e.g. eyk apps:logs -a myjobs<br/>
You should see job1.sh and job2.sh executed every minute.

### Configure schedule and scripts
Modify cron-jobs.yml to change the schedule and command.<br/>
You can use bash commands directly or execute a program.





