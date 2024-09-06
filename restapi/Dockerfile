# Use a lightweight base image
FROM alpine:latest

# Create a new non-root user
RUN useradd -m myuser
# Install curl
RUN apk add --no-cache curl bash

# Copy the Bash script into the container
COPY --chown=myuser:myuser restapi/rest_api.sh /usr/local/bin/rest_api.sh

# Make the script executable
RUN chmod +x /usr/local/bin/rest_api.sh

# Execute the Bash script when the container starts
CMD ["/usr/local/bin/rest_api.sh"]
