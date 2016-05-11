FROM oopschen/nodejs-cli:latest
MAINTAINER Ray Chen <linxray@gmail.com>

# Install DocPad globally.
RUN npm install -g docpad

# DocPad authentication.
RUN echo -e "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson
RUN chmod +wx ~/.docpad.cson
RUN ln -sv ~/.docpad.cson /.docpad.cson


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
