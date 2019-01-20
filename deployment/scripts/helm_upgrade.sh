#/bin/bash
helm upgrade ${HELM_RELEASE} deployment/aliwhat \
--set image.tag=${TAG} \
--namespace=${KUBERNETES_NAMESPACE}