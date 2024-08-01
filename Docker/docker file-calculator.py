Lets save the calculator application in calculator.py file

Find the below mentioned Dockerfile.

# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the Python script when the container launches
CMD ["python", "calculator.py"]


Commands to build

docker build -t calculator-app .

docker run -it calculator-app

