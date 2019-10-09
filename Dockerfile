FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  cowsay \
  fortune \
  git

RUN git clone http://github.com/possatti/pokemonsay
WORKDIR pokemonsay
RUN ./install.sh

ENV PATH="${PATH}:/root/bin:/usr/games"

CMD [ "/bin/bash", "-c", "fortune | pokemonsay" ]