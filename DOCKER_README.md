# 🐳 FastAPI Application with Docker & UV

This repository contains a high-performance FastAPI application containerized using Docker and optimized with the **uv** package manager for fast dependency installation.

---

## 🚀 Quick Start Guide

### 1. Build the Docker Image
Open your terminal in the root directory of this project and run the build command. Make sure to include the space and the dot (`.`) at the end:
```bash
docker build -t myapp .

2. Run the Container
Start the container while mapping your local machine's port 8080 to the container's internal port 8000:

Bash

docker run -p 8080:8000 myapp
3. Access the Application
Once the container starts, open your browser and navigate to:

Base API: http://127.0.0.1:8080

Interactive API Docs (Swagger UI): http://127.0.0.1:8080/docs