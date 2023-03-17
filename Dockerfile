FROM ubuntu:14.04.3
RUN apt-get update && apt-get install -y mysql-server

# Ensure we won't bind to localhost only
RUN grep -v bind-address /etc/mysql/my.cnf > temp.txt \
  && mv temp.txt /etc/mysql/my.cnf

# It doesn't seem needed since I'll use -p, but it can't hurt
EXPOSE 3306

CMD /etc/init.d/mysql start && tail -F /var/log/mysql.log
