FROM puckel/docker-airflow:latest
LABEL maintainer="kahihikolo_kaimi@bah.com"

RUN pip install tfx==0.26.1 --no-cache-dir
ENV FERNET_KEY = Iv3WGBOSXeBDiAowVd9b1ZP8pVstfnD/pQMR7LEz48k=

COPY ./airflow.cfg /usr/local/airflow/airflow.cfg

CMD ["airflow initdb && airflow webserver"]