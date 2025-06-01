ARG UPSTREAM=2.4.10
FROM harbor.internal.guru/docker-hub/analogic/poste.io:$UPSTREAM
RUN apt-get update && apt-get install less  # 'less'

ENV LISTEN_ON=host
ENV SEND_ON=

COPY files /
RUN /patches && rm /patches
