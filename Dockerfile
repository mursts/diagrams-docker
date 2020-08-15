FROM python:3.8-alpine

RUN apk update && apk add --no-cache graphviz curl fontconfig

WORKDIR /diagrams

# install fonts
RUN curl -L -O https://github.com/miiton/Cica/releases/download/v5.0.2/Cica_v5.0.2_with_emoji.zip \
  && mkdir -p /usr/share/fonts/cica \
  && unzip Cica_v5.0.2_with_emoji.zip -d /usr/share/fonts/cica/ \
  && rm Cica_v5.0.2_with_emoji.zip \
  && fc-cache -fv

RUN pip install diagrams

