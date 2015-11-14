FROM selenium/node-base:2.48.2
MAINTAINER Eljas Alakulppi <buzer@buzer.net>

USER root

ENV JAVA_OPTS "-Dwebdriver.firefox.bin=/opt/firefox/firefox"

ADD files/nightly.tar.bz2 /opt/
ADD config.json /opt/selenium/config.json

RUN cd /opt \
  && apt-get update \
  && apt-get install -y lsb-release libasound2 libatk1.0-0 libc6 libcairo2 libdbus-1-3 libdbus-glib-1-2 libfontconfig1 libfreetype6 libgcc1 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk2.0-0 libpango-1.0-0 libpangocairo-1.0-0 libstartup-notification0 libstdc++6 libx11-6 libxext6 libxrender1 libxt6 libgtk-3-0 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER seluser