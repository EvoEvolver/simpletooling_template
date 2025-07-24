FROM ghcr.io/astral-sh/uv:python3.12-alpine

# Set working directory
WORKDIR /app

# Copy the rest of the application files
COPY . .

# Install dependencies
RUN uv pip install --system -r requirements.txt

# Expose default Node.js port
EXPOSE 3000

# Start the application
CMD ["python", "tools/main.py"]