FROM rasa/rasa-sdk:3.6.2
WORKDIR /app
COPY . /app
USER root
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT []
CMD ["python", "-m", "rasa_sdk", "--port", "5055"]
