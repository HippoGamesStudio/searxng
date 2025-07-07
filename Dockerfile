FROM searxng/searxng:latest

EXPOSE 10000

CMD ["python3", "-m", "searx.webapp", "--host", "0.0.0.0", "--port", "10000"]
