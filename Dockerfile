FROM python:3.12-slim

WORKDIR /app

COPY pihole6_exporter /app/pihole6_exporter

RUN pip install --no-cache-dir requests prometheus_client urllib3

CMD ["python3", "pihole6_exporter"]
