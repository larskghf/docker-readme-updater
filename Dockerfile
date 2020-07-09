FROM debian:buster-slim

ARG TINI_VERSION=v0.19.0

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends curl python3 python3-requests \
    && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

ADD src/push-readme.py /opt/push-readme.py

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /sbin/tini
RUN chmod +x /sbin/tini

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["python3", "/opt/push-readme.py"]