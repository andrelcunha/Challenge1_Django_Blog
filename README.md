# Django Blog Application

This is a small Django application that simulates a blog with posts and tags as the first challenge of the 19th edition of "Imersao Fullstack && Full Cycle" from FullCycle.

## Requirements

- Python ^3.12.6
- Django
- Docker (optional)

## Installation and Setup

### Running Locally

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/django-blog.git
    cd django-blog
    ```

2. **Create a virtual environment** and activate it:
    ```bash
    python3 install pipenv
    pipenv shell
    ```

3. **Install the dependencies**:
    ```bash
    pipenv install
    ```

4. **Apply migrations**:
    ```bash
    python manage.py migrate
    ```

5. **Run the development server**:
    ```bash
    python manage.py runserver
    ```

6. **Access the application**: Open your web browser and go to `http://127.0.0.1:8000/blog` to view the blog list.

### Running with Docker

1. **Build the Docker image**:
    ```bash
    docker build -t django-blog .
    ```

2. **Run the Docker container**:
    ```bash
    docker run -p 8000:8000 django-blog
    ```

3. **Access the application**: Open your web browser and go to `http://127.0.0.1:8000/blog` to view the blog list.

## Admin Panel

To access the Django admin panel, go to `http://127.0.0.1:8000/admin` and log in with your superuser credentials.

## License

This project is licensed under the MIT License.
