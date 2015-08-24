FROM ubuntu:14.04
MAINTAINER Patrick Michelberger <patrick.michelberger@tum.de>

RUN apt-get update -q
RUN apt-get install -qy privoxy

ADD ./privoxy /etc/privoxy
ADD ./run.sh /
RUN chmod +x /run.sh

EXPOSE 8118

CMD ["/run.sh"]