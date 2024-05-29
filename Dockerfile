# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy your pre-compiled C binary into the container
COPY AKG /app/

# Make the binary executable
RUN chmod +x /app/bgmi

# Run python script when the container launches
CMD ["python", "main.py"]
