# playground-gunicorn

## Scripts

```sh
# Run server
$ poetry run python server/manage.py runserver 0.0.0.0:8000

# Start server
$ poetry run gunicorn server.config.wsgi:application -c server/conf.d/gunicorn.conf.py
```