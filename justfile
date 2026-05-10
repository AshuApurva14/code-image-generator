default:
   @just --list

# Build the Docker image
build:
    docker build -t {{image_name}}:{{version}} .
