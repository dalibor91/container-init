FROM debian:9 

MAINTAINER Dalibor Menkovic <dalibor.menkovic@gmail.com>

RUN apt-get update && apt-get install -y wget apache2

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64
RUN chmod +x /usr/local/bin/dumb-init

ADD init.sh /tmp/init.sh

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD [ "/bin/bash", "/tmp/init.sh" ]

