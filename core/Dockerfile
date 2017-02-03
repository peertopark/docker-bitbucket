FROM ubuntu:16.04
MAINTAINER  PeertoPark
RUN apt-get update && apt-get install --no-install-recommends -y openssh-client tar bzip2 awscli git zip unzip && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV SSH_PRIVATE ""
ADD getssh /usr/bin/getssh
RUN chmod +x /usr/bin/getssh
RUN useradd -ms /bin/bash builder
ADD sshconfig /home/builder/.ssh/config
RUN chown -R builder:builder /home/builder/.ssh
USER builder
WORKDIR /home/builder
ENTRYPOINT ["/bin/bash"]
