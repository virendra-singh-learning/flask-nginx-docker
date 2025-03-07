# Use official Python image as base
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Run the application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]

