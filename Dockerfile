FROM debian:trixie-slim

RUN apt-get update \
&& apt-get install -y --no-install-recommends fortune-mod fortunes \
&& rm -rf /var/lib/apt/lists/*

CMD ["/usr/games/fortune", "fortunes", "computers", "linux", "linuxcookie", "debian", "perl", "science", "wisdom", "work", "humorists", "literature", "riddles", "ascii-art", "startrek"]
