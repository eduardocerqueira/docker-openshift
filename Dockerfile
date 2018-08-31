FROM python:2.7-slim
MAINTAINER "Eduardo Cerqueira" eduardomcerqueira@gmail.com
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
ENTRYPOINT ["/usr/local/bin/gunicorn", "--config", "/usr/src/app/gunicorn.conf", "--log-config", "/usr/src/app/logging.conf", "-b", ":8000", "app:app"]