FROM ghcr.io/astral-sh/uv:python3.12-alpine

# Set working directory
WORKDIR /app

# Copy the rest of the application files
COPY . .

RUN apk add --no-cache git
# Install dependencies
RUN uv pip install --system -r requirements.txt
RUN uv pip install --system -e ./tools

# Expose default Node.js port
EXPOSE 8000

# Start the application
CMD ["python", "tools/main.py"]