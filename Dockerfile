FROM alpine:3.23.5@sha256:fd791d74b68913cbb027c6546007b3f0d3bc45125f797758156952bc2d6daf40

# install packages required to run the tests
RUN apk add --no-cache coreutils

WORKDIR /opt/analyzer
COPY . .
ENTRYPOINT ["/opt/analyzer/bin/run.sh"]
