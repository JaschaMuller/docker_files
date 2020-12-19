FROM python:3.6-buster

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin libgdal-dev && \
    apt-get install nginx

ARG CPLUS_INCLUDE_PATH=/usr/include/gdal
ARG C_INCLUDE_PATH=/usr/include/gdal

RUN python -m pip install --upgrade pip && \
    pip install numpy && \
    pip install crick && \
    pip install rasterio && \
    pip install shapely && \
    pip install gunicorn
	pip install terracotta[recommended] && \

EXPOSE 8000