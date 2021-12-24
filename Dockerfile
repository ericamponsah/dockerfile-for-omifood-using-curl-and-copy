FROM ubuntu:18.04
RUN apt update
RUN apt install nginx -y 
RUN apt install python3.8 -y
WORKDIR /var/www/html
COPY omnifood /var/www/html/omnifood 
RUN chmod +rwX /var/www/html/omnifood 
EXPOSE 80
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
