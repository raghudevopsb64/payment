FROM        python:3
RUN         mkdir /app
WORKDIR     /app
COPY        payment.ini /app
COPY        payment.py /app
COPY        rabbitmq.py /app
COPY        requirements.txt /app
RUN         pip3 install -r requirements.txt
ENTRYPOINT  ["uwsgi", "--ini", "payment.ini"]
