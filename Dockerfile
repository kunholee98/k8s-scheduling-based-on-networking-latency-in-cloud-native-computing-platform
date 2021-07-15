# Dockerfile
# without an file extension

# Use an official Python runtime as a parent image
FROM ubuntu:20.04

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make prot 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run custumScheduler.py when the container launches
CMD ["python", "custumScheduler.py"]