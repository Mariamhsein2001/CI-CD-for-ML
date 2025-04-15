# Use an official Python runtime as a parent image
FROM python:3.9-slim


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port for Flask app
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
