FROM python:3.9

COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY .env .env

COPY app app

COPY templates templates

EXPOSE 8000

CMD ["python3", "./app/main.py"]