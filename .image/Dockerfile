FROM debian:bookworm-slim

RUN apt-get update && apt install -y unzip wget
RUN wget https://github.com/tkuchiki/alp/releases/download/v0.4.0/alp_linux_amd64.zip
RUN unzip alp_linux_amd64.zip && mv alp /usr/local/bin/alp && rm alp_linux_amd64.zip
