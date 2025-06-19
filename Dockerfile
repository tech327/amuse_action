FROM rasa/rasa-sdk:3.6.2

WORKDIR /app

COPY . /app

USER root
RUN pip install --no-cache-dir -r requirements.txt

# Required: Start the action server on port 8000 (Render default)
CMD ["python", "-m", "rasa_sdk", "--port", "8000"]
