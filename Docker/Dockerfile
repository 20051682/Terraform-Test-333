# Use official Nginx image
FROM nginx:latest

# Copy the updated index.html from Docker/ to Nginx's default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
