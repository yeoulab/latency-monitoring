#!/usr/bin/env bash
docker run \
  --rm \
  -d \
  --name=heartbeat \
  --user=heartbeat \
  --volume="$(pwd)/heartbeat.docker.7.12.0.yml:/usr/share/heartbeat/heartbeat.yml:ro" \
  --volume="/root/tmp_7.12.0/cert_blog/certs:/usr/share/heartbeat/certs:ro" \
  --volume="$(pwd)/heartbeat.policy.json:/usr/share/heartbeat/heartbeat.policy.json" \
  docker.elastic.co/beats/heartbeat:7.12.0 heartbeat -e\
