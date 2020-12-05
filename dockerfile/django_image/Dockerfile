FROM python:3.6-buster

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin libgdal-dev

ARG CPLUS_INCLUDE_PATH=/usr/include/gdal
ARG C_INCLUDE_PATH=/usr/include/gdal

RUN python -m pip install --upgrade pip && \
	pip install django-toolbelt && \
	pip install django-leaflet && \
	pip install django-geojson && \
	pip install geojson && \ 
	pip install pandas

EXPOSE 8000 

