FROM python:3

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT


# Not sure if needed
# install psycopg2 dependencies
#RUN apk update \
#    && apk add postgresql-dev gcc python3-dev musl-dev

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
# todo use propper wsgi and gunicorn
# Something like: gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000
CMD python manage.py runserver 0.0.0.0:8000
