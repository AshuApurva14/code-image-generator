default:
   @just --list

setup:
    pip install ruff mypy

lint:
    ruff check .
    ruff format .

# Build the Docker image
dev-up:
    cd dev/ && docker compose up -d


dev-down:
    cd dev/ && docker compose down

dev-build:
    cd dev/ && docker compose build --no-cache

logs:
    cd dev/ && docker compose logs --timestamps

logs-follow:
    cd dev/ && docker compose logs -f --timestamps

remove:
    cd dev/ && docker system prune -a -f

img-list:
    cd dev/ && docker compose images
