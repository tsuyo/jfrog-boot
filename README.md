# Upgrade
helm upgrade artifactory -i -n artifactory -f common/artifactory-values.yaml center/jfrog/artifactory
helm upgrade artifactory-ha -i -n artifactory-ha -f common/artifactory-values.yaml center/jfrog/artifactory-ha
helm upgrade mission-control -i -n mission-control -f common/mission-control-values.yaml center/jfrog/mission-control
helm upgrade xray -i -n xray -f common/xray-values.yaml center/jfrog/xray
helm upgrade distribution -i -n distribution -f common/distribution-values.yaml center/jfrog/distribution
helm upgrade pipelines -i -n pipelines -f common/pipelines-values.yaml center/jfrog/pipelines
helm upgrade artifactory-edge -i -n artifactory-edge -f common/artifactory-edge-values.yaml center/jfrog/artifactory

helm upgrade jenkins -i -n jenkins -f common/jenkins-values.yaml jenkins/jenkins
helm upgrade mailhog -i -n mailhog -f common/mailhog-values.yaml codecentric/mailhog
