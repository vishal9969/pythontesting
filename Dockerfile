# Use an official Python runtime as a parent image
FROM repo.apps.inmumocpcl.atrapa.deloitte.com/cloudbuild/python:slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable for Flask to listen on 0.0.0.0
ENV FLASK_APP=app.py

# Run the Flask app when the container launches
CMD ["python", "app.py"]
