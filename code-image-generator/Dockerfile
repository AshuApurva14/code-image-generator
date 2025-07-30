# Start with a slim Python base image - 3.12 is recommended for modern features and performance
FROM python:3.12-slim-bookworm AS base
 
# Set environment variables
ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100
 
# --------------------------------------
# Stage 1: Builder - installs dependencies and prepares app
# --------------------------------------
FROM base AS builder
 
# Install build dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
 
# Set up a virtual environment
RUN python -m venv /opt/venv
# Ensure we use the virtual environment
ENV PATH="/opt/venv/bin:$PATH"
 
# Set working directory
WORKDIR /app
 
# Copy and install requirements first for better caching
COPY requirements.txt .
 
# Install Python dependencies with caching
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt \
    && pip install --no-cache-dir playwright \
    && python -m playwright install chromium

RUN apt-get update && apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

 
# Copy the rest of the application code
COPY . .
 
# If you have a build step (e.g., compiling assets), run it here
# RUN pip install .
 
# --------------------------------------
# Stage 2: Final production image
# --------------------------------------
FROM base
 
# Create a non-root user and group
RUN groupadd -r appuser && useradd -r -g appuser appuser
 
# Set working directory
WORKDIR /app
 
# Copy only the virtual environment from the builder stage
COPY --from=builder /opt/venv /opt/venv
 
# Copy application code
COPY --from=builder /app /app
 
# Set environment variables to use virtual environment
ENV PATH="/opt/venv/bin:$PATH"
 
# Set ownership for application files
RUN chown -R appuser:appuser /app
 
# Switch to non-root user
USER appuser

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:8000/ || exit 1
 
# Expose the port your application runs on
EXPOSE 8000
 
# Run your application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]