# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local project files to the container's working directory
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port for Streamlit app
EXPOSE 8501

# Command to run Streamlit app (using Deployment.py instead of app.py)
CMD ["streamlit", "run", "Deployment.py"]
