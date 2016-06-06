FROM ubuntu:xenial
RUN apt-get update && apt-get install -y --no-install-recommends python3-asyncssh python3-websockets openssl
ADD html /srv/html
ADD dl-wsshd /srv
WORKDIR /srv
RUN touch /srv/cert.pem
CMD ["./dl-wsshd"]

EXPOSE 8022
