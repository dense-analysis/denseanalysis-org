FROM debian:bookworm-slim

WORKDIR /workdir

RUN apt-get update && apt-get install -y hugo

COPY content layouts static themes config.toml .

CMD [ "hugo", "--bind", "0.0.0.0" ]
