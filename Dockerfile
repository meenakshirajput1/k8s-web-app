# Use the official Nginx image as a base
FROM nginx:alpine

# Remove default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy all files from the current directory to Nginx's public folder
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
