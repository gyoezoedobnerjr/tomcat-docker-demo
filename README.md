# Tomcat Docker Demo
Instead of the Tomcat sample webapp, the current version of this demo project runs the latest
version of Jenkins at the time of writing
( https://github.com/jenkinsci/jenkins/releases/download/jenkins-2.287/jenkins.war )
using a Tomcat installation inside a Docker container.

Although Jenkins is also released under the MIT license, the 'jenkins.war' file I'm using doesn't
seem to have a copy of the version of the MIT license the Jenkins project uses, so I opted for
directly downloading it during the build process. This means that this version of the demo will
only work as long as the file remains available from the link used. Hopefully, I will be able to
write something myself to replace it with before it disappears.

This is just a demo. For production use, you will probably want to go with e.g.
https://github.com/jenkinsci/docker instead.

## Required Software
Docker ( https://docs.docker.com/get-docker/ )

## Usage
If you have a working installation of Docker running on you system and a working
Internet connection, you can build a Docker image from this repo by running the
following:

docker build -t &lt;image-name-of-your-choice&gt; .

in this directory at a command prompt. Replace '&lt;image-name-of-your-choice&gt;'
with whatever you want to name the resulting image. (Don't forget the '.' at
the end of the command!)

Careful! You do not need the '&lt;&gt;' signs in the name you choose!

After the image is successfully built, you can launch a container generated
from the image by running the following at a command prompt anywhere on your
system:

docker run -dp 8080:8080 --name &lt;container-name-of-your-choice&gt; &lt;image-name-of-your-choice&gt;

Replace '&lt;image-name-of-your-choice&gt;' with whatever you used in the command to build the
image, and '&lt;container-name-of-your-choice&gt;' with whatever you want to name the resulting
container.

If the port '8080' is already in use on your system, you can select a different port
to use by changing the number to the left of the colon in the command e.g. like this:

docker run -dp 8085:8080 --name &lt;container-name-of-your-choice&gt; &lt;image-name-of-your-choice&gt;

After the container is successfully launched, you can view the test webapp running in it
by entering 'localhost:your-chosen-port' in the address bar of your web browser e.g. like
this:

localhost:8085

## Miscellaneous
One day I hope I will be able to write a webapp myself to use in this demo.
