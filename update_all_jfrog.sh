export ENV=gcp/dev
export NS=platform

helm repo update
helm secrets upgrade artifactory -i -n $NS -f values/$ENV/artifactory-values.yaml jfrog/artifactory
helm secrets upgrade xray -i -n $NS -f values/$ENV/xray-values.yaml jfrog/xray
helm secrets upgrade insight -i -n $NS -f values/$ENV/insight-values.yaml jfrog/insight
helm secrets upgrade distribution -i -n $NS -f values/$ENV/distribution-values.yaml jfrog/distribution
helm secrets upgrade pipelines -i -n $NS -f values/$ENV/pipelines-values.yaml jfrog/pipelines
helm secrets upgrade edge1 -i -n $NS -f values/$ENV/edge1-values.yaml jfrog/artifactory
