FROM python:3.13-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache \
    build-base \
    python3-dev \
    py3-pip \
    libffi-dev \
    openssl-dev \
    bash

COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000
ENV PORT=8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
