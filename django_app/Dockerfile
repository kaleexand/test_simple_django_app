FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV DJANGO_DB_HOST=db \
    DJANGO_DB_PORT="5432" \
    DJANGO_DB_NAME=app \
    DJANGO_DB_USER=worker\
    DJANGO_DB_PASS=worker \
    DJANGO_DEBUG="False"

COPY ./requirements.txt .

RUN pip install --upgrade pip
RUN pip3 install -r  requirements.txt

COPY . /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]



# CMD ["python3", "manage.py", "migrate"]
# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]