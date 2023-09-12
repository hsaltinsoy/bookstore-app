FROM python:alpine
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && pip install cryptography
COPY . .
EXPOSE 80
CMD python ./bookstore-api.py
