FROM python:latest
ENV PYTHONUNBUFFERED 1
RUN mkdir /siteapp
WORKDIR /siteapp
COPY requirements.txt /siteapp/
RUN pip install --user -r requirements.txt
COPY siteapp /siteapp/
CMD python manage.py runserver 0.0.0.0:8080
