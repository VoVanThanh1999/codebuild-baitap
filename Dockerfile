# Use Python 3.10 as the base image
FROM --platform=linux/amd64 python:3.10-slim-buster as build

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY /analytics/ /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose port 5153
EXPOSE 5153

# Set an environment variable
ENV NAME World

# Run the application when the container starts
CMD ["python", "app.py"]