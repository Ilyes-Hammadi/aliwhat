#/bin/bash
docker build --build-arg COMMIT_REF=${CIRCLE_SHA1} -t ${PROJECT_NAME} .
docker tag ${PROJECT_NAME} eu.gcr.io/${GOOGLE_PROJECT_ID}/${PROJECT_NAME}:${CIRCLE_SHA1}