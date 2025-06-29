FROM debian:oldstable

RUN apt update && apt install -y \
    nginx \
    openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/private.key -x509 \
    -days 365 -out /etc/nginx/certificate.pem -subj "/C=MA/ST=Casablanca-Settat/L=khouribga/O=42sp/CN=hel-band.42.fr"

CMD ["nginx", "-g", "daemon off;"]

