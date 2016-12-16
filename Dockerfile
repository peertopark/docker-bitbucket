FROM ubuntu:16.04
MAINTAINER  PeertoPark
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y php-cli php-curl php-xdebug composer phpunit rsync awscli openjdk-8-jdk maven nodejs npm zip unzip git && apt-get autoclean && apt-get clean
RUN ln -fs /usr/bin/nodejs /usr/local/bin/node
RUN npm install --global csslint
RUN npm install --global jshint
RUN npm install --global yuicompressor
ENV SSH_PRIVATE ""
ADD sshconfig /root/.ssh/config
ADD getssh /usr/bin/getssh
RUN chmod +x /usr/bin/getssh
RUN mkdir /root/.m2
ADD settings.xml /root/.m2/settings.xml
ENTRYPOINT ["/bin/bash"]
