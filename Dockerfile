FROM python:3.10.14-alpine3.20

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apk update \
    && apk add --no-cache gcc musl-dev postgresql-dev \
    python3-dev libffi-dev && pip install --upgrade pip

COPY app/requirements.txt ./

RUN pip install -r requirements.txt

COPY app/ ./

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
