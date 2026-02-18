## Docker Commands Cheat Sheet

---

### Container Management
These commands are used to create, run, and manage the lifecycle of containers.

*   `docker run [IMAGE]` : Creates and starts a new container from an image.
*   `docker ps` : Lists all currently running containers. Use `docker ps -a` to list all containers, including stopped ones.
*   `docker start [CONTAINER_NAME]` : Starts a stopped container.
*   `docker stop [CONTAINER_NAME]` : Stops a running container (sends SIGTERM, then SIGKILL after a grace period).
*   `docker restart [CONTAINER_NAME]` : Restarts a running container.
*   `docker kill [CONTAINER_NAME]` : Forcefully stops a container immediately (sends SIGKILL).
*   `docker rm [CONTAINER_NAME]` : Removes a stopped container. Running containers must be stopped first, or the `-f` (force) flag can be used.
*   `docker exec -it [CONTAINER_NAME] [COMMAND]` : Runs a command inside a running container, often used to open a shell (e.g., `docker exec -it mycontainer bash`).
*   `docker logs [CONTAINER_NAME]` : Fetches and displays the logs of a container. Use `docker logs -f` to follow log output in real time.
*   `docker inspect [CONTAINER_NAME]` : Displays detailed low-level information about a container or other Docker objects.
*   `docker cp [SOURCE_PATH] [DEST_PATH]` : Copies files/folders between a container and the local filesystem.

---

### Image Management
These commands are used to manage the images that containers are built from.

*   `docker build -t [IMAGE_NAME] .` : Builds a new image from a Dockerfile in the current directory.
*   `docker pull [IMAGE_NAME]` : Downloads an image from a registry (like Docker Hub).
*   `docker push [IMAGE_NAME]` : Uploads an image to a registry.
*   `docker images` or `docker image ls` : Lists all local Docker images.
*   `docker rmi [IMAGE_NAME]` : Removes a local image.
*   `docker search [IMAGE_NAME]` : Searches Docker Hub for public images.
*   `docker image prune` : Removes all unused (dangling) images to free up disk space.

---

### System & Utility Commands

*   `docker login` : Logs in to the Docker Hub registry.
*   `docker logout` : Logs out from the Docker Hub registry.
*   `docker version` : Shows the Docker version information.
*   `docker info` : Displays system-wide information about the Docker installation.
*   `docker system prune` : Removes unused containers, networks, images (dangling and unused), and optionally volumes.

---

### Docker Compose
Docker Compose is used to define and run multi-container Docker applications.

*   `docker compose up` : Creates and starts containers and other resources defined in the `docker-compose.yml` file.
*   `docker compose down` : Stops and removes containers, networks, and volumes created by `docker compose up`.
*   `docker compose ps` : Lists containers for the current compose project.
*   `docker compose build` : Builds or rebuilds services defined in the compose file.