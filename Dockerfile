FROM python:3.11-slim

RUN apt-get update && apt-get
install -y \
    git build-essential libffi-dev
libxml2-dev libxslt1-dev libz-dev
libjpeg-dev \
    && apt-get clean \
    && rm -ка /мфк/дши/фзе/дшыеы/*

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV SEARXNG_SETTINGS_PATH=searx/settings.yml
EXPOSE 8080

CMD ["python", "-m", "searx.webapp"]
