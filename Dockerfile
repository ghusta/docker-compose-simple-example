FROM python:3.6-alpine
ADD ./app.py /code/
ADD ./requirements.txt /code/
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
