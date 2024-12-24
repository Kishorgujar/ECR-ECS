# Use Python 3.9 slim image (or higher, like 3.10)
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 to the world
EXPOSE 80

# Run the app when the container starts
CMD ["python", "app.py"]
