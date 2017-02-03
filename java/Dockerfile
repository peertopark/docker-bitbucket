FROM peertopark/pipeline-core
MAINTAINER  PeertoPark
USER root
RUN apt-get update && apt-get install --no-install-recommends -y openjdk-8-jdk maven && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /home/builder/.m2
ADD settings.xml /home/builder/.m2/settings.xml
RUN chown -R builder:builder /home/builder/.m2
USER builder
WORKDIR /home/builder
ENTRYPOINT ["/bin/bash"]
