#/bin/bash
docker build --build-arg COMMIT_REF=${TAG} -t ${PROJECT_NAME} .
docker tag ${PROJECT_NAME} eu.gcr.io/${GOOGLE_PROJECT_ID}/${PROJECT_NAME}:${TAG}