FROM node:lts-alpine

RUN apk add --no-cache git python2 build-base
RUN apk add --no-cache nodejs npm build-base g++ cairo-dev jpeg-dev pango-devbash imagemagick
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
