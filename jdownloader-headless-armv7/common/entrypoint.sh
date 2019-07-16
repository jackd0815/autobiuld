#!/bin/sh
if [ ! -f /opt/JDownloader/JDownloader.jar ] && [ -f /opt/JDownloader/tmp/update/self/JDU/JDownloader.jar ]
then
 cp /opt/JDownloader/tmp/update/self/JDU/JDownloader.jar /opt/JDownloader/
fi
java -Xmx512m -Djava.awt.headless=true -jar /opt/JDownloader/JDownloader.jar
