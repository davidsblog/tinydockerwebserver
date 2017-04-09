# for example
# docker run --rm -v ${PWD}:/www -p 8080:8080 dweb

FROM scratch
COPY dweb /bin/
EXPOSE 8080
WORKDIR /www
ENTRYPOINT ["/bin/dweb", "8080", "-d"]
