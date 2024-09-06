# Use a lightweight base image
FROM alpine:latest

# Install curl
RUN apk add --no-cache curl bash

# Copy the Bash script into the container
COPY restapi/rest_api.sh /usr/local/bin/rest_api.sh

# Make the script executable
RUN chmod +x /usr/local/bin/rest_api.sh

# Execute the Bash script when the container starts
CMD ["/usr/local/bin/rest_api.sh"]
