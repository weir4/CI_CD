FROM python:3.11-slim

WORKDIR /app

COPY python/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY python/src/ ./src/

CMD ["python", "src/main.py"]
