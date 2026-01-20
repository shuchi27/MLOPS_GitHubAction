FROM python:3.8-slim

# Set a working directory
WORKDIR /app

# Copy your requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app's code
COPY . .

# Default command to run your tests
CMD ["pytest"]
