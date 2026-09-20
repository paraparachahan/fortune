FROM debian:trixie-slim

RUN apt-get update 
&& apt-get install -y --no-install-recommends fortune-mod 
&& rm -rf /var/lib/apt/lists/*

COPY fortunes/developer /usr/share/games/fortunes/developer
