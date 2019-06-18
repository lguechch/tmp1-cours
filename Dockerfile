FROM ubuntu:latest
#MAINTAINER JCD "jcd717@outlook.com"
LABEL mainainer = "JCD jcd717@outlook.com"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ARG hbs=2
ENV HEARTBEATSTEP $hbs

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]

