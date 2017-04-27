FROM peertopark/pipeline-java
MAINTAINER  PeertoPark
USER root
RUN apt-get update && apt-get install --no-install-recommends -y mysql-server && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
ENTRYPOINT ["/bin/bash"]
