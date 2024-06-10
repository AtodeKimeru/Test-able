FROM python:3.10.14-alpine3.20

RUN mkdir app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY /app /app

EXPOSE 8000

CMD ["gunicorn", "app.wsgi:core", "--bind 0.0.0.0:8000"]
