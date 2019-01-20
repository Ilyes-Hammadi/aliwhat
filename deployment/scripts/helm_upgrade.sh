#/bin/bash
helm upgrade aliwhat deployment/aliwhat \
--set image.tag=${TAG} \
--namespace=${KUBERNETES_NAMESPACE}