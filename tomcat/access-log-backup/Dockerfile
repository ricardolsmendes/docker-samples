FROM alpine:latest

COPY ./scripts/daily/* /etc/periodic/daily

# The coreutils module is installed to enable "date" commands to parse useful
# input args such as "--date '1 day ago'".
RUN apk update && \
    apk upgrade && \
    apk add --no-cache coreutils && \
    chmod a+x /etc/periodic/daily/*
