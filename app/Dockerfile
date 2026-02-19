#
FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY app.py /app/app.py

ENV DB_PATH=/data/app.db
EXPOSE 8080

# Gunicorn pour un démarrage “propre”
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8080", "app:app"]

