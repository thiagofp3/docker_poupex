FROM ubuntu
RUN apt-get update 
RUN apt-get install nginx -y
RUN apt-get install apache2 -y
WORKDIR /etc/nginx
CMD ["nginx"]
ADD default /etc/nginx/sites-available/default
ADD index.html /var/www/
EXPOSE 80
COPY teste_docker /tmp/arquivo_teste
CMD bash
