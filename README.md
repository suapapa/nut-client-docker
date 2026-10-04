README.md
# NUT Client Docker

This repository contains a Dockerized NUT (Network UPS Tools) client (`upsmon`) to monitor a UPS via a network.

## Files
- `Dockerfile`: Build instructions for the Alpine-based image.
- `entrypoint.sh`: Script to dynamically generate `upsmon.conf` using environment variables.
- `docker-compose.yml`: Docker Compose configuration for deployment.
- `.env.example`: Template for environment variables.

## Quick Start

1. **Clone the repo**:
   ```bash
   git clone https://github.com/suapapa/nut-client-docker.git
   cd nut-client-docker
   ```

2. **Setup environment variables**:
   ```bash
   cp .env.example .env
   # Edit .env with your UPS details
   ```

3. **Run with Docker Compose**:
   ```bash
   docker compose up -d
   ```

## Deployment with GHCR
The image is available on GitHub Container Registry (GHCR).

To pull and run:
```bash
docker pull ghcr.io/suapapa/nut-client-docker:latest
```
