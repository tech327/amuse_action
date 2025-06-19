FROM rasa/rasa-sdk:3.6.16

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["rasa", "run", "actions", "--port", "5055", "--cors", "*"]