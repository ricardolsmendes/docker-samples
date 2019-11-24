FROM alpine:latest

COPY ./scripts/daily/* /etc/periodic/daily

# The coreutils module is installed to make "date" commands accept useful
# input args such as "--date '1 day ago'".
RUN apk update && \
    apk upgrade && \
    apk add --no-cache coreutils && \
    chmod a+x /etc/periodic/daily/*
