FROM arm32v7/alpine
RUN apk update && apk upgrade
RUN apk add dnsmasq
CMD ["/usr/sbin/dnsmasq -d"]
