# docker build -t hello-world-nginx . 
# docker run -d -p 8080:80 hello-world-nginx

FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www-data /www-data

EXPOSE 80
CMD ["nginx"]
