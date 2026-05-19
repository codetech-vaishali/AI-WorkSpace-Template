# Base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install uv
RUN pip install uv

# Create virtual environment
RUN uv venv --clear

# Install dependencies
RUN uv pip install -r requirements.txt --system

# Expose application port
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]