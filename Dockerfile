FROM rasa/rasa-sdk:3.6.2

WORKDIR /app

COPY . /app

ENV PYTHONPATH=/app

USER root
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-m", "rasa_sdk", "--port", "8000"]
