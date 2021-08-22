FROM busybox
COPY ./job1.sh /job1.sh
COPY ./job2.sh /job2.sh
RUN chmod +x /job1.sh
RUN chmod +x /job2.sh
RUN wget  https://github.com/ess/cronenberg/releases/download/v1.0.0/cronenberg-v1.0.0-linux-amd64 -O /usr/sbin/cronenberg && chmod +x /usr/sbin/cronenberg
COPY cron-jobs.yml /cron-jobs.yml
CMD /usr/sbin/cronenberg /cron-jobs.yml
