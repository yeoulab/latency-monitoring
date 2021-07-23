FROM docker.elastic.co/beats/heartbeat:7.12.0

WORKDIR /usr/share/heartbeat

COPY certs ./certs
COPY heartbeat.docker.yml ./
COPY heartbeat.policy.json ./

CMD ["./heartbeat", "-e"]


