# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app


# Copy the requirements file to the container
COPY requirements.txt ./

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . .

# Expose the port that Django runs on
EXPOSE 8000

# Define the command to run when the container starts
CMD ["python", "django_web_app/manage.py", "runserver", "0.0.0.0:8000"]
