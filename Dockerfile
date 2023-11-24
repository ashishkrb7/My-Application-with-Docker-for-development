# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Author
LABEL maintainer="Ashish Kumar"

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary tools
RUN apt-get update && apt-get install -y python3 python3-pip tree git vim \
    && apt-get clean

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

# Expose necessary ports
EXPOSE 5000

# Copy the application files to the working directory
COPY . /app

# Set permissions for the user
RUN groupadd -r myuser && useradd -r -g myuser myuser
RUN chown -R myuser:myuser /app

# Change to the root user
USER root

# Set the entrypoint command (modify the password as per your requirement [Note: password is 'labuser' and its hash is put here])
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--port=5000", "--allow-root", "--NotebookApp.password=argon2:$argon2id$v=19$m=10240,t=10,p=8$nDYWpW9W+U327kKnoJZY3g$xsukfvCq5wsL6xYJp1tC5HORnPCzt8X6zx6/DN6Jc2U"]
