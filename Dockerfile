# Use the official Nginx image as a base image
FROM nginx:alpine

# Copy your website files into the container
COPY ./lab4 /usr/share/nginx/html/lab4

# Copy your Nginx configuration files into the container
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./web2lab4.crt /etc/ssl/certs/mywebsite.crt
COPY ./web2lab4.key /etc/ssl/private/mywebsite.key

# Expose ports for HTTP and HTTPS
EXPOSE 80 443

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
