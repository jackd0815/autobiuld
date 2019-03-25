FROM arm32v7/alpine

COPY qemu-arm-static /usr/bin

RUN apk update && apk upgrade
RUN apk add dnsmasq

CMD ["dnsmasq -d"]
