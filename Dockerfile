FROM nvidia/cuda:8.0-devel
# FROM nvidia/cuda:7.5-devel
# FROM tensorflow/tensorflow:1.4.0-devel-gpu
# FROM nvidia/cuda:9.1-base-ubuntu16.04
# In canada we need certificates for proxy issues
# COPY certs/ /usr/local/share/ca-certificates/extra/

# on some machines you might need this line to pass proxy
COPY 99fixbadproxy /etc/apt/apt.conf.d/

RUN apt-get install -y ca-certificates
RUN update-ca-certificates

WORKDIR /dqn
ADD dqn /dqn
RUN /dqn/install_dependencies.sh
# ADD asterix.bin /roms
