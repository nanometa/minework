# Dockerfile for Fernando Miner Swarm
FROM node:22-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    procps \
    build-essential \
    libffi-dev \
    libssl-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the pre-cloned repositories from the build context
# (We will build from the root where setup_swarm.py placed everything)
COPY mine-skill ./mine-skill
COPY awp-skill ./awp-skill
COPY awp-wallet ./awp-wallet

# Install awp-wallet
WORKDIR /app/awp-wallet
RUN npm install

# Install Python dependencies for the core skill
# We use --break-system-packages because the container is dedicated
WORKDIR /app
RUN pip3 install --no-cache-dir --break-system-packages \
    -r mine-skill/requirements-core.txt \
    -r mine-skill/requirements.txt || echo "Warning: Some deps failed"

# Create logs
RUN touch /app/wrapper.log && chmod 666 /app/wrapper.log

# Copy entrypoint
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
