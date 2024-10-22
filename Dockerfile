# Use a specific version of Python
FROM python:3.12.6

# Set the working directory
WORKDIR /app

# Copy the Pipfile and Pipfile.lock
COPY Pipfile Pipfile.lock ./

# Install pipenv
RUN pip install pipenv

# Install dependencies
RUN pipenv install --deploy --ignore-pipfile --system

# Copy the entire project directory into the container
COPY . .

# Expose the port the app will run on
EXPOSE 8000

# Run migrations and then start the Django development server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
