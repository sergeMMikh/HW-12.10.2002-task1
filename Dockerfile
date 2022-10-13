# Pull the minimal Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
COPY html  /usr/share/nginx/html

# Expose the port for access
EXPOSE 80

# Create volume
VOLUME /usr/share/nginx/html

# Run the Nginx server
CMD /usr/sbin/nginx

