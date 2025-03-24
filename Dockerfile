FROM python:3.14.0a6-slim-bookworm

RUN pip install --upgrade pip

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY . /app

WORKDIR /app

CMD ["python", "app.py"]
