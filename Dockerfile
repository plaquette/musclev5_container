# Use Alpine Linux for its small size
FROM alpine:latest

# Install bash
RUN apk add --no-cache bash

# Set the working directory inside the container
WORKDIR /usr/local/bin

# Copy the binary muscle5.1.linux_intel64 into the working directory
COPY muscle5.1.linux_intel64 /usr/local/bin/muscle

# Make the binary executable
RUN chmod +x /usr/local/bin/muscle

# Ensure bash is used as the default shell
SHELL ["/bin/bash", "-c"]

# Set the entry point to bash
ENTRYPOINT ["/bin/bash"]
