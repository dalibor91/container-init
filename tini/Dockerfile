FROM debian:9

MAINTAINER Dalibor Menkovic <dalibor.menkovic@gmail.com>

RUN apt-get update && apt-get install -y wget apache2

ENV TINI_VERSION v0.16.1
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini

ADD init.sh /tmp/init.sh

ENTRYPOINT ["tini", "--"]
CMD [ "/bin/bash", "/tmp/init.sh" ]

