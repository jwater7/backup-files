FROM jwater7/supervisor-scheduler
LABEL maintainer "j"

RUN apk --update --no-cache add openssh-client tar

ENV BACKUP_DIRS /data
#ENV DEST_HOST
#ENV DEST_PATH
ENV DEST_CRED backup
#ENV ENC_PASS
ENV FILE_PREFIX file_backup
# Matching DOW=`date +%a` # Day of the week e.g. Mon
ENV DOW Mon
# Matching DOM=`date +%d` # Date of the Month e.g. 27
ENV DOM 01

COPY supervisor_conf/job.ini /job/
COPY backup_files /root/

VOLUME /data

