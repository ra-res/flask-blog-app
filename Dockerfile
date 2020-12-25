FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
RUN pip3 install --upgrade pip
COPY . /flaskr
COPY requirements.txt requirements.txt
WORKDIR /flaskr
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flaskr/__init__.py"]
