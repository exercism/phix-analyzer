FROM alpine:3.18

# install packages required to run the tests
RUN apk add --no-cache coreutils

WORKDIR /opt/analyzer
COPY . .
ENTRYPOINT ["/opt/analyzer/bin/run.sh"]
