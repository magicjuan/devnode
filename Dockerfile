FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir /usr/depot
WORKDIR /usr/depot

RUN apt-get update \
    &&  apt-get -y install make curl \
    &&	apt-get clean \
    &&	rm -rf /bd_build \
    &&	rm -rf /tmp/* /var/tmp/* \
    &&	rm -rf /var/lib/apt/lists/* \
    &&	rm -f /etc/ssh/ssh_host_*


RUN apt-get update \
    &&  apt-get -y install jq \
    &&	apt-get clean \
    &&	rm -rf /bd_build \
    &&	rm -rf /tmp/* /var/tmp/* \
    &&	rm -rf /var/lib/apt/lists/* \
    &&	rm -f /etc/ssh/ssh_host_*


RUN apt-get update \
    &&  apt-get -y install tmux \
    &&	apt-get clean \
    &&	rm -rf /bd_build \
    &&	rm -rf /tmp/* /var/tmp/* \
    &&	rm -rf /var/lib/apt/lists/* \
    &&	rm -f /etc/ssh/ssh_host_*


# RUN apt-get update \
#     &&  apt-get -y install vim \
#     &&	apt-get clean \
#     &&	rm -rf /bd_build \
#     &&	rm -rf /tmp/* /var/tmp/* \
#     &&	rm -rf /var/lib/apt/lists/* \
#     &&	rm -f /etc/ssh/ssh_host_*

# RUN apt-get update \
#     &&  apt-get -y install gnupg2 \
#     &&  apt-get -y install apt-transport-https \
#     && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
#     && curl https://packages.microsoft.com/config/ubuntu/$(awk -F "=" '/^DISTRIB_RELEASE=/ {print $2}' /etc/lsb-release | sed -e 's/22\.10/22.04/')/prod.list > /etc/apt/sources.list.d/mssql-release.list \
#     && apt-get update \
#     && ACCEPT_EULA=Y apt-get -y install msodbcsql18  \
#     &&	apt-get clean \
#     &&	rm -rf /bd_build \
#     &&	rm -rf /tmp/* /var/tmp/* \
#     &&	rm -rf /var/lib/apt/lists/* \
#     &&	rm -f /etc/ssh/ssh_host_*

# RUN apt-get update \
#     &&  apt-get -y install podman podman-docker\
#     &&	apt-get clean \
#     &&	rm -rf /bd_build \
#     &&	rm -rf /tmp/* /var/tmp/* \
#     &&	rm -rf /var/lib/apt/lists/* \
#     &&	rm -f /etc/ssh/ssh_host_*


# RUN apt-get update \
#     &&  apt-get -y install python3 python3-pip \
#     &&	apt-get clean \
#     &&	rm -rf /bd_build \
#     &&	rm -rf /tmp/* /var/tmp/* \
#     &&	rm -rf /var/lib/apt/lists/* \
#     &&	rm -f /etc/ssh/ssh_host_*

# RUN apt-get update \
#     &&  curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
#     &&	apt-get clean \
#     &&	rm -rf /bd_build \
#     &&	rm -rf /tmp/* /var/tmp/* \
#     &&	rm -rf /var/lib/apt/lists/* \
#     &&	rm -f /etc/ssh/ssh_host_*