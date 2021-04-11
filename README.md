# Tomcat Docker Demo
This project runs the Tomcat sample webapp
( https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war )
using a Tomcat installation inside a Docker container. I'm not sure about the licensing
implications of keeping the webapp inside this repo, so the build process will download
it directly from the Tomcat web site, which means this version of the demo will only work
as long as the webapp remains available from there. Hopefully, I will be able to find (or
better yet: write) something to replace it with before it disappears.

## Required Software
Docker ( https://docs.docker.com/get-docker/ )

## Usage
If you have a working installation of Docker running on you system and a working
Internet connection, you can build a Docker image from this repo by running the
following:

docker build -t <image-name-of-your-choice> .

in this directory at a command prompt. Replace '<image-name-of-your-choice>'
with whatever you want to name the resulting image. (Don't forget the '.' at
the end of the command!)

Careful! You do not need the '<>' signs in the name you choose!

After the image is successfully built, you can launch a container generated
from the image by running the following at a command prompt anywhere on your
system:

docker run -dp 8080:8080 --name <container-name-of-your-choice> <image-name-of-your-choice>

Replace '<image-name-of-your-choice>' with whatever you used in the command to build the
image, and '<container-name-of-your-choice>' with whatever you want to name the resulting
container.

If the port '8080' is already in use on your system, you can select a different port
to use by changing the number to the left of the colon in the command e.g. like this:

docker run -dp 8085:8080 --name <container-name-of-your-choice> <image-name-of-your-choice>

After the container is successfully launched, you can view the test webapp running in it
by entering 'localhost:your-chosen-port' in the address bar of your web browser e.g. like
this:

localhost:8085

## Miscellaneous
I may later replace the webapp with something more interesting.
