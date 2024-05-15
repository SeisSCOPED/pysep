FROM ghcr.io/seisscoped/container-base

LABEL maintainer="Ian Wang"

RUN cd /home/scoped \
    && git clone https://github.com/adjtomo/pysep.git
RUN cd /home/scoped/pysep \
	&& conda env update -f environment.yml -n base \
    && docker-clean

