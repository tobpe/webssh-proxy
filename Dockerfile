FROM ubuntu:xenial
ADD html /srv
ADD dl-wsshd /srv
WORKDIR /srv
RUN apt-get update && apt-get install -y --no-install-recommends python3-asyncssh python3-websockets openssl
RUN touch /srv/cert.pem
CMD ["./dl-wsshd"]

EXPOSE 8022
