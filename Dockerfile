FROM python:3.9-slim-buster
WORKDIR /server

# Poetry installation
RUN pip install "poetry==1.1.12"

COPY poetry.lock pyproject.toml ./
RUN poetry config virtualenvs.create false \
    && poetry install

COPY . ./

CMD poetry run gunicorn server.config.wsgi:application -c server/conf.d/gunicorn.conf.py

EXPOSE 8080
