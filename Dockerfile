FROM fedora:25
MAINTAINER  PeertoPark
RUN dnf install -y --best --allowerasing tar bzip2 git curl php-cli php-mysqlnd php-pecl-xdebug java-1.8.0-openjdk-devel maven zip unzip nodejs npm composer php-phpunit-PHPUnit awscli && dnf clean all
RUN npm install --global csslint
RUN npm install --global jshint
RUN npm install --global yuicompressor
ENV SSH_PRIVATE ""
ADD getssh /usr/bin/getssh
RUN chmod +x /usr/bin/getssh
RUN useradd -ms /bin/bash builder
ADD sshconfig /home/builder/.ssh/config
RUN chown -R builder:builder /home/builder/.ssh
RUN mkdir /home/builder/.m2
ADD settings.xml /home/builder/.m2/settings.xml
RUN chown -R builder:builder /home/builder/.m2
USER builder
WORKDIR /home/builder
ENTRYPOINT ["/bin/bash"]
