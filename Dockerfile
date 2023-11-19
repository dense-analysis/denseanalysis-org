FROM debian:bookworm-slim

WORKDIR /workdir

RUN apt-get update && apt-get install -y hugo

CMD [ "hugo", "--bind", "0.0.0.0" ]
