FROM mysql:8.0.21

ENV LC_ALL=C.UTF-8
ENV character-set-server utf8
ENV collation-server utf8_general_ci
ENV default-character-set utf8
ENV default-collation utf8_general_ci

ENV MYSQL_DATABASE WEBROOT
ENV MYSQL_ROOT_PASSWORD password

expose 3306
