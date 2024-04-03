FROM python:3.12.0

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN mkdir /jsonwebtoken/

WORKDIR /jsonwebtoken

RUN pip install --upgrade pip

COPY requirements.txt /jsonwebtoken/

RUN pip install -r requirements.txt

COPY . /jsonwebtoken/

EXPOSE 8000

CMD ./manage.py migrate --noinput && ./manage.py collectstatic --noinput && python manage.py runserver 0.0.0.0:8000