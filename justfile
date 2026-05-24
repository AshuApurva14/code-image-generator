default:
   @just --list

# Build the Docker image
dev-up:
    docker compose up -d 


dev-down:
    docker compose down

dev-build:
    docker compose build --no-cache

logs:
    docker logs --timestamps

remove:
    docker system prune -a -f

img-list:
    docker compose images
