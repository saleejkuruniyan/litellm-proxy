# Use the official LiteLLM image
FROM ghcr.io/berriai/litellm:main-latest

# Set the working directory
WORKDIR /app

# Copy the configuration file
COPY config.yaml .

# Expose the port
EXPOSE 4000

# Start LiteLLM
# --host 0.0.0.0 is required for Koyeb networking
CMD ["--config", "config.yaml", "--port", "4000", "--host", "0.0.0.0", "--num_workers", "1"]
