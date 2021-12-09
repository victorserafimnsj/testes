FROM python 

RUN pip install psycopg2-binary
RUN pip install configparser

WORKDIR /app

COPY . /app/

CMD ["python3", "/app/etltenant.py", "-e", "qa"]
