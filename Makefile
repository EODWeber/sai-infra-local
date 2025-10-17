# Simple runner for local infra stack
DC := docker compose

.PHONY: up down logs ps

up:
	$(DC) up -d

down:
	$(DC) down -v

logs:
	$(DC) logs -f --tail=200

ps:
	$(DC) ps