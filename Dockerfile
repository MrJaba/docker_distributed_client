FROM ubuntu:14.04
MAINTAINER Tom Crinson "the.jaba@gmail.com"
ENV REFRESHED_AT 2014-12-08

RUN apt-get -qqy update
RUN apt-get -qqy install ruby ruby-dev build-essential
RUN gem install --no-ri --no-rdoc json

RUN mkdir -p /opt/distributed_client
ADD app/client.rb /opt/distributed_client/
WORKDIR /opt/distributed_client

ENTRYPOINT [ "ruby", "/opt/distributed_client/client.rb" ]
CMD []