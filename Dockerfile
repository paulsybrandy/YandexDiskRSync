FROM python:3.13.0b2-slim

WORKDIR /uploader/
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

VOLUME ["/uploader/upload"]

ENTRYPOINT ["python", "main.py"]
