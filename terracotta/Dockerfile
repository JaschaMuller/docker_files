FROM python:3.6-buster

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin libgdal-dev && \
    apt-get install systemd -y && \
    apt-get install ca-certificates -y && \
    apt update -y && \
    apt upgrade -y && \
    apt install nginx -y

ARG CPLUS_INCLUDE_PATH=/usr/include/gdal
ARG C_INCLUDE_PATH=/usr/include/gdal

RUN python -m pip install --upgrade pip && \
    pip install numpy && \
    pip install pandas && \
    pip install requests && \
    pip install cython && \
    pip install crick && \
    pip install rasterio && \
    pip install shapely && \
    pip install gunicorn && \
	pip install terracotta[recommended] && \
    pip install boto3

RUN export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]