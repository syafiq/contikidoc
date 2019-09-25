FROM ubuntu:16.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y apt-utils build-essential libncurses5-dev iputils-ping && \
  apt-get install -y software-properties-common python python-serial && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y gcc-arm-none-eabi gdb-arm-none-eabi && \
  apt-get install -y net-tools usbutils python3-pip && \
  apt-get install -y srecord lib32z1 lib32ncurses5 lib32stdc++6 && \
  pip3 install pyserial && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# ADD DIR

# Define default command.
CMD ["bash"]
