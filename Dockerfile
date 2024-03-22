FROM python:3.10.13

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY /app /app

CMD gunicorn app.wsgi:core --bind 0.0.0.0:8000