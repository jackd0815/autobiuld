FROM alpine:arm32v7
RUN apk update && apk upgrade
RUN apk add dnsmasq
CMD ["/usr/sbin/dnsmasq -d"]
