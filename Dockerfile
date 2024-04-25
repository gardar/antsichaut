FROM python:3.10-slim

WORKDIR /usr/src/app

RUN apt update &&\
    apt install -y git &&\
    pip install -U git+https://github.com/gardar/antsichaut@fix-missing-changes

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
