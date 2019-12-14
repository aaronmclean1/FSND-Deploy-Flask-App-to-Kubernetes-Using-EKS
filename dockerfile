# Use the Python Stretch Image
FROM python:stretch
# FROM ubuntu

# use apt-get when pip is blocked by firewall
# RUN apt-get update
# RUN apt-get install -y python-jwt
# RUN apt-get install -y python-flask
# RUN apt-get install -y gunicorn
# RUN apt-get install -y python-pytest
# RUN apt-get install -y python-git
# RUN apt-get install -y curl
# RUN apt-get install -y apt-utils

# Use a proxy if needed
# RUN export http_proxy=http://sub.proxy.att.com:8080
# RUN export https_proxy=http://sub.proxy.att.com:8080

WORKDIR /apps

RUN git clone git://github.com/udacity/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS.git

# Run with Flask
# RUN python /apps/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS/main.py

WORKDIR /apps/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS

RUN pip install -r requirements.txt

# Run with gunicorn
# RUN gunicorn -b :8080 main:APP

# Run from python:stretch
# import os
# os.system("gunicorn -b :8080 main:APP")