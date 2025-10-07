# 1. Use an official Python base image
FROM python:3.10-slim

# 2. Set a working directory inside the container
WORKDIR /app

# 3. Copy the application files into the container
COPY . /app

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose the port the Flask app runs on
EXPOSE 5000

# 6. Define the command to run the Flask app
CMD ["python", "app.py"]
