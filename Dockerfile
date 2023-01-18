FROM toxik/curvytron

ENV app_dir /curvytron
WORKDIR ${app_dir}

RUN git remote add lucas https://github.com/lucasgalton/curvytron.git \
    && git pull lucas developCGI

RUN gulp
EXPOSE 8080

CMD node bin/curvytron.js
