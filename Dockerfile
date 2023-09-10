FROM python:alpine
RUN pip install flask && pip install flask-mysql && pip install cryptography
COPY . /app
WORKDIR /app
EXPOSE 80
CMD python ./bookstore-api.py