FROM debian:bookworm

WORKDIR /home

RUN apt-get update -y  && apt-get install mariadb-server -y

RUN mkdir -p /run/mysqld

RUN chmod 777 /run/mysqld

COPY /tools/script.sh /home

ENTRYPOINT [ "sh", "script.sh" ]

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]
