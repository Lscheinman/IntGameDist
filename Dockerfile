# Use a lightweight web server
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default NGINX index.html
RUN rm -rf ./*

# Copy the Godot build into the web server directory
COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
