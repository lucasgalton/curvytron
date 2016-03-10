FROM node:onbuild
ENV app_dir /curvytron
WORKDIR ${app_dir}
ADD . ${app_dir}
RUN apt-get update && apt-get install python make g++ -y \
  && rm -rf /var/lib/apt/lists/*
RUN npm install gulp -g && npm install
RUN gulp
EXPOSE 8080
CMD node bin/curvytron.js
