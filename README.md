# 🧠 Secure AI Platform — Infra Local

[![Build Status](https://img.shields.io/github/actions/workflow/status/EODWeber/sai-infra-local/ci.yml?branch=main&label=CI)](https://github.com/EODWeber/sai-infra-local/actions)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)
[![Part of Project](https://img.shields.io/badge/Part%20of-Secure%20AI%20Platform-9cf?logo=github)](https://github.com/EODWeber/sai-platform-meta)
[![Security Checks](https://img.shields.io/badge/Security%20Scans-GHAS%20Enabled-success?logo=github)](https://github.com/EODWeber/sai-infra-local/security)

Local Docker Compose stack for the Secure AI Platform. This repo hosts the baseline services (e.g., MLflow, Loki/Grafana, Vault, OTel Collector) used by other `sai-*` components.

## Quickstart

> Requires Docker Desktop (or Docker Engine) with Compose v2.

```bash
# clone & enter
git clone https://github.com/EODWeber/sai-infra-local.git
cd sai-infra-local

# start
make up

# follow logs
make logs

# stop & remove volumes
make down
```

## Enabling Services

Uncomment services in `docker-compose.yml` incrementally. Recommended order:

1. `loki` and `grafana` (observability)
2. `otel-collector` (telemetry ingestion)
3. `mlflow` (model registry/tracking)
4. `vault` (secrets)
5. `caddy` (reverse proxy)

## Notes

- Keep secrets out of the repo; use Vault or local env vars.
- Pair this with `sai-observability-stack` for dashboards and OTel configs.
- See the program index in `sai-platform-meta` for the big-picture architecture.
