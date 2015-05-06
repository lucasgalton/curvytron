FROM node:slim
ENV app_dir /curvytron
WORKDIR ${app_dir}
ADD . ${app_dir}
RUN apt-get update
RUN apt-get install python make g++ -y
RUN npm install gulp -g
RUN npm install
RUN gulp
EXPOSE 8080
CMD node bin/curvytron.js