# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /app
COPY . .
ENTRYPOINT ["python","-m","flask","run","--host=0.0.0.0"]
