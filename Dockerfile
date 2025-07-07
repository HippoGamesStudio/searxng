FROM searxng/searxng:latest

EXPOSE 10000

CMD ["sh", "-c", "python3 -m searx.webapp --host 0.0.0.0 --port ${PORT:-10000}"]
