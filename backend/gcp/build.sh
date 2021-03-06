#!/bin/bash

# Builds the Docker image and sends it to the GCP repo

PROJECT_ID=`gcloud config get-value project`
# gcloud builds submit --tag gcr.io/$PROJECT_ID/tornado-server
docker build -t gcr.io/$PROJECT_ID/tornado-server:v0 . --no-cache
docker push gcr.io/hacksc-237405/tornado-server:v0
