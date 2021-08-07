# Install / Upgrade

## JFrog Platform
$ helm secrets upgrade artifactory-ha -i -n platform-prod -f values/artifactory-values.yaml jfrog/artifactory-ha
$ helm secrets upgrade mission-control -i -n platform-prod -f values/mission-control-values.yaml jfrog/mission-control
$ helm secrets upgrade xray -i -n platform-prod -f values/xray-values.yaml jfrog/xray
$ helm secrets upgrade distribution -i -n platform-prod -f values/distribution-values.yaml jfrog/distribution
$ helm secrets upgrade pipelines -i -n platform-prod -f values/pipelines-values.yaml jfrog/pipelines
$ helm secrets upgrade edge -i -n platform-prod -f values/edge-values.yaml jfrog/artifactory

## Ecosystem
$ helm secrets upgrade jenkins -i -n jenkins -f values/jenkins-values.yaml jenkins/jenkins
$ helm secrets upgrade mailhog -i -n mailhog -f values/mailhog-values.yaml codecentric/mailhog
