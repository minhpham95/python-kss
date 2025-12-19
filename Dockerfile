# Dockerfile
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the Python application and dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
