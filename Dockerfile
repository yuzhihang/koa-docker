FROM centos:6
RUN yum install -y gcc-c++ make
RUN yum install -y sudo
USER root
RUN curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
RUN yum -y install nodejs
RUN npm install -g pm2
WORKDIR /koaserver
VOLUME ["/data"]
RUN npm init -y
RUN pwd;ls -l
RUN npm install -S koa
#CMD pm2 start
EXPOSE 3000
#CMD ["pm2","start","pm2.json","--no-daemon"]