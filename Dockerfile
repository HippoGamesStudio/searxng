FROM searxng/searxng:latest

WORKDIR /app
COPY . /app

ENV SEARXNG_SETTINGS_PATH=/app/searx/settings.yml
EXPOSE 8080

CMD ["python", "-m", "searx.webapp", "--host", "0.0.0.0", "--port", "10000"]
