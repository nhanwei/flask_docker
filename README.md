# Flask in Docker
Deploying a flask app on Docker

To build the docker image:   
```bash
docker build -t my_docker_flask:debianslim .
```
I'm tagging the image as debianslim. You can tag it in whatever name you wish.

It should take a couple of minutes to build the image. I am using Debian Buster Slim image as my base because it is more lightweight, build faster and take up less memory. Also, it is less complicated to install `scipy`.

To run the docker image:  
```bash
docker run -d -p 5000:5000 my_docker_flask:debianslim
```
We are publishing the container's port 5000 to the host. 5000 is the default port number for flask app.

That's it!
