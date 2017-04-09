# An experiment to create a small container
#
# To serve files from your current dir on port 8080, for example:
# docker run --rm -v ${PWD}:/www -p 8080:8080 davidsblog/tinydockerwebserver

FROM scratch
COPY dweb /bin/
EXPOSE 8080
WORKDIR /www
ENTRYPOINT ["/bin/dweb", "8080", "-d"]
