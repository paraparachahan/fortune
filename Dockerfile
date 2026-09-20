FROM debian:trixie-slim

RUN apt-get update \
&& apt-get install -y --no-install-recommends fortune-mod \
&& rm -rf /var/lib/apt/lists/*

COPY fortunes/daily /usr/share/games/fortunes/daily

RUN /usr/bin/strfile /usr/share/games/fortunes/daily

CMD ["/usr/games/fortune", "/usr/share/games/fortunes/daily"]
