FROM toxik/curvytron

ENV app_dir /curvytron
WORKDIR ${app_dir}

RUN gulp
EXPOSE 8080

CMD node bin/curvytron.js
