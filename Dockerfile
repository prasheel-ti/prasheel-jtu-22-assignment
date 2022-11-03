# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /prasheel-jtu-22-assignment

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
COPY requirements.txt /prasheel-jtu-22-assignment/requirements.txt
RUN pip install -r /prasheel-jtu-22-assignment/requirements.txt

# Copy your codebase into the Docker container.
COPY . /prasheel-jtu-22-assignment

# Run FastAPI server on the port exposed above.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--reload"]