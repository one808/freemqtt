FROM python:3.9-slim

WORKDIR ./freemqtt_app
 
ADD . .

RUN pip install -r requirements.txt

CMD ["python", "./freemqttd.py"]
