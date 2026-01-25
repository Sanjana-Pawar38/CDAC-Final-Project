# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install Flask
RUN pip install -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production

# Run the app
CMD ["python", "app.py"]

