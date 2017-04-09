# tinydockerwebserver

An **experiment** to create a tiny docker container. I don't plan to use this for anything specific, but
I just wanted to create something working in Docker that wasn't huge ;-)

This will build a small docker container that just contains my mini-webserver, *dweb*. I have compiled
*dweb* with the *gcc* `-static` flag. I also used `upx` to pack down the binary size. This gives a small
standalone webserver (and nothing else). I'm hoping that the image will come in **under 400k**.

# Usage

You need to tell `docker run` to mount a volume as `/www` which will contain the files being served up.

So ... to serve the files *in your current directory* on port 8080, it could be used like this:

`docker run --rm -v ${PWD}:/www -p 8080:8080 davidsblog/tinydockerwebserver`

This will mean that the webserver is running in the Docker container, but the files being served are on the host.
