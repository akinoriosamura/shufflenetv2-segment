FROM nvidia/cuda:10.0-devel-ubuntu18.04

ENV export LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3.6 \
    python3.6-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel
# RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# RUN python3.6 get-pip.py

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

#RUN pip3 install pipenv \
#    pipenv install --system
