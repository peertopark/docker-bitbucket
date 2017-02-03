FROM peertopark/pipeline-core
MAINTAINER  PeertoPark
USER root
RUN apt-get update && apt-get install --no-install-recommends -y php-cli php-curl php-xdebug php-mysql composer phpunit rsync nodejs npm nodejs-legacy && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER builder
WORKDIR /home/builder
ENTRYPOINT ["/bin/bash"]
