# Use the official Nginx base image with a specific version for stability
FROM nginx:latest

# Copy the static HTML files to the Nginx web root
COPY ./html /usr/share/nginx/html

# Set permissions for the copied files (optional, if needed)
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]