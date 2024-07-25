FROM debian:bookworm

RUN apt-get update -y  && apt-get install nginx -y && apt-get install openssl -y

RUN apt-get install -y nano 

RUN cd /etc/nginx && openssl genpkey -algorithm RSA -out abenmous.key

RUN cd /etc/nginx && openssl req -x509 -new -key abenmous.key -sha256 -days 365 -out abenmous.crt -subj "/C=MA/ST=Morocco/L=Tetouan/O=My Company/OU=IT/CN=www.aa.com/emailAddress=abenmous@example.com"

COPY /conf/nginx.conf  /etc/nginx/conf.d/

COPY /tools/ng_script.sh .

EXPOSE 443

ENTRYPOINT ["bash", "./ng_script.sh"]

CMD ["nginx", "-g", "daemon off;"]
