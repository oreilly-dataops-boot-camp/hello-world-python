FROM python:3.8.5

WORKDIR /src

RUN pip install flask

COPY app.py .

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0"]
