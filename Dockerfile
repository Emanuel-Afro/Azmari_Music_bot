# Use a specific version of Python for consistency
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt first to leverage Docker caching
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the application
COPY . /app

# Run the bot when the container starts
CMD ["python", "bot.py"]
