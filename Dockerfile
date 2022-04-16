FROM python:3.10

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

RUN mkdir code

WORKDIR /code

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 80
