FROM python:3.6

WORKDIR /app/backend

COPY requirements.txt /app/backend

# Install app dependencies
#RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/backend

EXPOSE 8000
#RUN python manage.py migrate
#RUN python manage.py makemigrations
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
