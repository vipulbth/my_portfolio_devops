# Use an official Apache image from the Docker Hub
FROM httpd:alpine

# Set the working directory in the container
WORKDIR /usr/local/apache2/htdocs/

# Remove the default Apache index.html
RUN rm -rf ./*

# Copy the local code to the container
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
