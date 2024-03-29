FROM node:17-alpine

RUN apk update && apk add jq bash

COPY entrypoint.sh /entrypoint.sh
COPY filter.jq /opt/filter.jq
COPY lookups.json /opt/lookups.json

ENTRYPOINT ["/entrypoint.sh"]
