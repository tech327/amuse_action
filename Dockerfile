FROM rasa/rasa-sdk:3.6.2             # ✅ Uses the official Rasa SDK image
WORKDIR /app                        # ✅ Sets working directory
COPY . /app                         # ✅ Copies all your custom action files

USER root
RUN pip install --no-cache-dir -r requirements.txt  # ✅ Installs your dependencies

# ✅ Starts the action server on port 8000 (required by Render)
CMD ["python", "-m", "rasa_sdk", "--port", "8000"]
