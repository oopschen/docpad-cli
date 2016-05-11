FROM oopschen/nodejs-cli:latest
MAINTAINER Ray Chen <linxray@gmail.com>

# Install DocPad globally.
RUN npm install -g docpad

# Set up the application directory.
VOLUME ["/app"]
WORKDIR /app


# Expose the default DocPad port.
EXPOSE 9778
EXPOSE 8080
EXPOSE 8081
EXPOSE 3000
EXPOSE 5000


# Launch DocPad when the container stars, passing through any arguments.
CMD ["--help"]
ENTRYPOINT ["docpad"]
