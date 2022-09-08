FROM ghcr.io/seisscoped/container-base

LABEL maintainer="Ian Wang"

RUN cd /home/scoped \
    && git clone https://github.com/uafgeotools/pysep.git
RUN cd /home/scoped/pysep \
    && conda install --file requirements.txt \
    && pip install -e . \
    && docker-clean

