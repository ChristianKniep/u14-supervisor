FROM ubuntu:14.10
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN echo "2015-05-31.1";apt-get update

## SUPERVISOR
RUN apt-get install -y supervisor
ADD etc/supervisord.conf /etc/supervisord.conf

CMD supervisord -c /etc/supervisord.conf

