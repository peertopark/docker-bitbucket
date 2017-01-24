FROM fedora:25
MAINTAINER  PeertoPark
RUN dnf install -y --best --allowerasing bzip2 git curl php-cli php-mysqlnd php-pecl-xdebug java-1.8.0-openjdk-devel maven zip unzip nodejs npm composer php-phpunit-PHPUnit awscli && dnf clean all
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
