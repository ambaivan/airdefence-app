# Use the official lightweight Python image.
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Tell Cloud Run this is a web server
EXPOSE 8080

# Start your app (change to your filename if needed)
CMD ["python", "myapp.py"]
