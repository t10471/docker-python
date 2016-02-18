## python
FROM t10471/python-base:latest

MAINTAINER t10471 <t104711202@gmail.com>


ENV OPTS_APT -y --force-yes --no-install-recommends

RUN pip3 install PyMySQL 
RUN pip3 install SQLAlchemy
RUN pip3 install sqlalchemy-migrate 
RUN pip3 install beautifulsoup4
RUN pip3 install --upgrade pyflakes
RUN pip3 install MechanicalSoup

RUN apt-get update\
 && apt-get install ${OPTS_APT}\
      swig

ADD init.sh /root/init.sh
