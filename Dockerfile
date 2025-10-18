FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y nginx git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm -rf /var/www/html/* && \
    git clone https://github.com/gabrielecirulli/2048.git /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]