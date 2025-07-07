FROM searxng/searxng:latest

ENV PORT=10000
ENV SECRET_KEY=$(openssl rand -hex 32)

EXPOSE 10000

CMD ["sh", "-c", "python3 -m searx.webapp --host 0.0.0.0 --port $PORT"]
