FROM ubuntu:jammy
RUN apt update && apt -y install curl
RUN cd /tmp
RUN curl https://cdn.teleport.dev/teleport_11.0.0-rc.1_arm64.deb --output teleport_11.0.0-rc.1_arm64.deb
RUN dpkg -i teleport_11.0.0-rc.1_arm64.deb
RUN teleport start