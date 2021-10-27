# Install / Upgrade

## JFrog Platform
$ helm repo update
$ helm secrets upgrade artifactory -i -n platform-prod -f values/artifactory-values.yaml jfrog/artifactory
$ helm secrets upgrade xray -i -n platform-prod -f values/xray-values.yaml jfrog/xray
$ helm secrets upgrade insight -i -n platform-prod -f values/insight-values.yaml jfrog/insight
$ helm secrets upgrade distribution -i -n platform-prod -f values/distribution-values.yaml jfrog/distribution
$ helm secrets upgrade pipelines -i -n platform-prod -f values/pipelines-values.yaml jfrog/pipelines
$ helm secrets upgrade edge -i -n platform-prod -f values/edge-values.yaml jfrog/artifactory

## Ecosystem
$ helm secrets upgrade jenkins -i -n jenkins -f values/jenkins-values.yaml jenkins/jenkins
$ helm secrets upgrade mailhog -i -n mailhog -f values/mailhog-values.yaml codecentric/mailhog
