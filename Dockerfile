FROM python:3.7-alpine
WORKDIR /flaskr
ENV FLASK_APP=flaskr:__init__.py
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
#CMD ["flask", "run"]
CMD ["flask", "run", "--host", "0.0.0.0"]

