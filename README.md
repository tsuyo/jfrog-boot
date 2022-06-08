# JFrog Boot

## Install / Upgrade

JFrog Platform
```
$ export ENV=gcp/dev
$ export NS=platform
```
```
$ kubectl create ns cert-boot
$ kubectl create ns $NS
```
```
$ helm repo add jfrog https://charts.jfrog.io       # for jfrog platform
$ helm repo add jetstack https://charts.jetstack.io # for cert-manager
$ helm repo update
```
```
$ helm secrets upgrade cert-boot -i -n cert-boot -f values/$ENV/cert-boot-values.yaml cert-boot/cert-boot
$ helm secrets upgrade artifactory -i -n $NS -f values/$ENV/artifactory-values.yaml jfrog/artifactory
$ helm secrets upgrade xray -i -n $NS -f values/$ENV/xray-values.yaml jfrog/xray
$ helm secrets upgrade insight -i -n $NS -f values/$ENV/insight-values.yaml jfrog/insight
$ helm secrets upgrade distribution -i -n $NS -f values/$ENV/distribution-values.yaml jfrog/distribution
$ helm secrets upgrade pipelines -i -n $NS -f values/$ENV/pipelines-values.yaml jfrog/pipelines
$ helm secrets upgrade edge1 -i -n $NS -f values/$ENV/edge1-values.yaml jfrog/artifactory
```

Ecosystem
```
$ kubectl create ns ecosystem
```
```
$ helm secrets upgrade jenkins -i -n ecosystem -f values/$ENV/jenkins-values.yaml jenkins/jenkins
$ helm secrets upgrade mailhog -i -n ecosystem -f values/$ENV/mailhog-values.yaml codecentric/mailhog
```

## Uninstall
Ecosystem
```
$ helm uninstall -n $NS mailhog
$ helm uninstall -n $NS jenkins
```

JFrog Platform
```
$ helm uninstall -n $NS edge1
$ helm uninstall -n $NS pipelines
$ helm uninstall -n $NS distribution
$ helm uninstall -n $NS insight
$ helm uninstall -n $NS xray
$ helm uninstall -n $NS artifactory
$ helm uninstall -n $NS cert-boot
```
