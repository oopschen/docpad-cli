# DocPad Dockerfile
FROM alpine:latest
MAINTAINER Ray Chen <linxray@gmail.com>

# Environments
ENV NODE_VERSION 4.3.0-r0

# install nodejs
RUN apk add -U nodejs=${NODE_VERSION}
RUN npm update --global npm

# Install DocPad globally.
RUN npm install -g docpad

# Set up the application directory.

VOLUME ["/app"]
WORKDIR /app


# Expose the default DocPad port.

EXPOSE 9778


# Launch DocPad when the container stars, passing through any arguments.
CMD ["-"]
ENTRYPOINT ["docpad"]
