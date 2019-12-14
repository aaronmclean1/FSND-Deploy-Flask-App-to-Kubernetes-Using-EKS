# Use the Python Stretch Image
# FROM python-stretch
FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-jwt
RUN apt-get install -y python-flask
RUN apt-get install -y gunicorn
RUN apt-get install -y python-pytest
RUN apt-get install -y python-git
RUN apt-get install -y curl
RUN apt-get install -y apt-utils
RUN export http_proxy=http://sub.proxy.att.com:8080
RUN export https_proxy=http://sub.proxy.att.com:8080

WORKDIR /repos

RUN git clone git://github.com/udacity/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS.git

# RUN python /repos/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS/main.py

WORKDIR /repos/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
RUN gunicorn -b :8080 main:APP