# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom website files to the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]