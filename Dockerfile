FROM debian:stretch

LABEL maintainer="SillyWhale <contact@sillywhale.wtf>"

### Install base package
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libnss3 libasound2 libgconf-2-4 libxtst6 libx11-xcb1 \
    ca-certificates wget libxss1 libgtk2.0-0 && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/*


### Install de Postman
RUN mkdir -p /opt/postman && \
    wget -q -O /tmp/postman.tar.gz https://dl.pstmn.io/download/latest/linux64 && \
		tar -xzf /tmp/postman.tar.gz -C /opt/postman --strip-components=1 && \
		rm -rf /tmp/postman.tar.gz


ENTRYPOINT ["/opt/postman/Postman"]
