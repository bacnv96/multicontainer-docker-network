FROM ubuntu:latest
# install binary and remove cache
RUN apt-get update \
    && apt-get install -y iperf3 \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["iperf3"]