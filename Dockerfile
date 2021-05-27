FROM python:3.7.4-slim

WORKDIR /app

COPY src src
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/app"
CMD ["uvicorn", "src.resnet50_classifier:app", "--host", "0.0.0.0", "--port", "5000"]
