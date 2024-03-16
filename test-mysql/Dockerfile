FROM mysql:latest

#init.sql파일을 /docker-entrypoint-initdb.d/ 로 복사, /docker-entrypoint-initdb.d/에 있는 sql문은 컨테이너가 처음 실행 시 자동실행됨
COPY ./init/init.sql /docker-entrypoint-initdb.d/

ENV MYSQL_USER ${MYSQL_USER}
ENV MYSQL_PASSWORD ${MYSQL_PASSWORD}
ENV MYSQL_ROOT_PASSWORD ${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE ${MYSQL_DATABASE}