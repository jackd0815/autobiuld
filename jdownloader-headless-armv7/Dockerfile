FROM arm32v7/openjdk:8-jre-alpine

COPY qemu-arm-static /usr/bin

ENV USER=jdownloader
ENV UID=500
ENV GID=100

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --no-create-home \
    --uid "$UID" \
    "$USER" "$GID"

RUN apk update && apk upgrade && \
    apk add --no-cache --quiet unrar p7zip bash && \
	mkdir -p /opt/JDownloader && \
	chown -R "$USER":"$GID" /opt/JDownloader

USER "$USER"

# Create directory, and start JD2 for the initial update and creation of config files.
RUN wget -O /opt/JDownloader/JDownloader.jar --user-agent="https://hub.docker.com/r/jackd0815/jdownloader/" http://installer.jdownloader.org/JDownloader.jar

EXPOSE 5800/tcp
EXPOSE 3129/tcp

# Run this when the container is started
CMD ["java", "-Xmx512m", "-Djava.awt.headless=true", "-jar", "/opt/JDownloader/JDownloader.jar"]
