FROM python
MAINTAINER boploi

COPY ./requirements.txt /requirement.txt
RUN pip install -r requirement.txt

RUN mkdir /chatapp
WORKDIR /chatapp
COPY ./chatapp /chatapp

RUN adduser --disabled-login boploi
USER boploi