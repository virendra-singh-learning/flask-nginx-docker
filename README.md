Project: Deploy a Flask Web App with Nginx using Docker


Project Description


This project demonstrates how to containerize a Flask web application and deploy it using Docker and Docker Compose. The goal is to create a scalable, production-ready environment where Flask serves as the backend, Gunicorn acts as the WSGI server, and Nginx functions as a reverse proxy to handle requests efficiently.

By the end of this project, you will have a fully functional web application running in Docker containers, accessible via http://localhost (or a cloud server). This is an essential skill for DevOps engineers, as containerization is widely used in modern software deployment.

Key Technologies Used
Flask – A lightweight Python web framework for building web applications.
Gunicorn – A WSGI server for running Python web applications.
Nginx – A web server used as a reverse proxy to handle incoming traffic.
Docker – A containerization platform to package and deploy applications.
Docker Compose – A tool for defining and managing multi-container applications.
Project Structure
php
Copy
flask-nginx-docker/
│── app/
│   ├── app.py            # Main Flask application
│   ├── requirements.txt   # Dependencies
│   ├── wsgi.py           # Entry point for Gunicorn
│── nginx/
│   ├── default.conf      # Nginx configuration
│── docker-compose.yml    # Defines services and networking
│── Dockerfile            # Flask app Docker image
│── nginx.Dockerfile      # Nginx Docker image
How It Works
Flask App (app.py):

Serves a simple web page that returns "Hello, DevOps Engineer! Your Flask app is running in Docker!".
The app runs on port 5000 inside the container.
Gunicorn (wsgi.py):

Gunicorn is used as the WSGI server to handle Flask requests efficiently.
Nginx as Reverse Proxy (default.conf):

Nginx listens on port 80 and forwards requests to the Flask app running on port 5000.
It helps in load balancing and improves performance.
Dockerization:

A Dockerfile is created to containerize the Flask application.
Another nginx.Dockerfile is used to containerize the Nginx server.
Docker Compose (docker-compose.yml):

Defines both services (flask and nginx).
Ensures networking and dependency management between containers.
