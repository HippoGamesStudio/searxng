FROM searxng/searxng:latest

WORKDIR /app

ENV SEARXNG_SETTINGS_PATH=searx/settings.yml
EXPOSE 8080

CMD ["python", "-m", "searx.webapp"]
