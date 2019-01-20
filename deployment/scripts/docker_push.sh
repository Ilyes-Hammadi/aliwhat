#/bin/bash
TAG=${1}
gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://eu.gcr.io
docker push eu.gcr.io/${GOOGLE_PROJECT_ID}/${PROJECT_NAME}:${TAG}