# My Application with Docker

This repository contains an application that can be run using Docker and Docker Compose.

## Prerequisites

Make sure you have Docker and Docker Compose installed on your system.

- [Docker installation guide](https://docs.docker.com/get-docker/)
- [Docker Compose installation guide](https://docs.docker.com/compose/install/)

## How to create password?

Run below command to create password. Modify the password in script itself

```bash
python jupyter_notebook_config.py
```
```

## Using Docker

To build and run the application using Docker:

1. Build the Docker image:

    ```bash
    docker build -t myapp .
    ```

2. Run the Docker container:

    ```bash
    docker run -p 5000:5000 myapp
    ```

This will start the application in a Docker container. Modify the port mappings (`-p`) according to your application's requirements.

## Using Docker Compose

Alternatively, you can use Docker Compose to simplify the process:

1. Make sure you are in the project directory containing the `docker-compose.yml` file.

2. Run the following command:

    ```bash
    docker-compose up
    ```

This command will build the Docker image and start the service defined in the `docker-compose.yml` file. Adjust the configuration in the `docker-compose.yml` file as needed.

## Accessing the Application

Once the application is running, you can access it in your web browser or through the defined ports.

- For example, if using Jupyter Lab, access it at [http://localhost:5000](http://localhost:5000) depending on your setup.

## Stopping the Application

To stop the running Docker containers, use the following command:

```bash
docker-compose down
```

This will stop and remove the containers created by Docker Compose.


