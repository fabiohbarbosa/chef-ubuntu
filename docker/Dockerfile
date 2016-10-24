FROM ubuntu:16.04

USER root

RUN apt-get update && \
    apt-get install ruby-full build-essential sudo git -y

RUN gem update --no-rdoc --no-ri && \
    gem install berkshelf ohai chef --no-rdoc --no-ri

ADD startup.sh /opt/startup.sh
RUN chmod +x /opt/startup.sh

# User
ENV USER docker
RUN /usr/sbin/groupadd $USER
RUN /usr/sbin/useradd $USER -m -d /home/$USER -g $USER -s /bin/bash

# Sudo
RUN echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker

CMD /opt/startup.sh
