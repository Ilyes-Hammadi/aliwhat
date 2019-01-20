#/bin/bash
TAG=${1}
helm upgrade aliwhat deployment/aliwhat \
--set image.tag=${TAG} \
--namespace=${KUBERNETES_NAMESPACE}