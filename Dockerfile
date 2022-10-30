FROM ubuntu:20.04
#
# Identify the maintainer of an image
LABEL maintainer="kallol.b@inneed.cloud.com"

#
# Update the image to the latest packages
RUN apt-get update

#
# Install NGINX to test.
RUN apt-get install nginx -y

#
# Expose port 80
EXPOSE 4000

#
# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
