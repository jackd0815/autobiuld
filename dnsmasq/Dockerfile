FROM arm32v7/debian:stretch-slim AS builder

COPY qemu-arm-static /usr/bin

RUN \
  echo "deb-src http://deb.debian.org/debian stretch main" >> /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y --no-install-recommends install dnsmasq

CMD ["dnsmasq -d"]
