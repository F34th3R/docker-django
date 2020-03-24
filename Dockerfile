FROM python:3.7-alpine

# important
ENV PYTHONNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create a user with permission to run app only
# is important to security
RUN adduser -D user
USER user
