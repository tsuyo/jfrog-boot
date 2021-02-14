# Upgrade
helm upgrade artifactory -i -n artifactory -f artifactory-values.yaml center/jfrog/artifactory
helm upgrade artifactory-ha -i -n artifactory-ha -f artifactory-values.yaml center/jfrog/artifactory-ha
helm upgrade mission-control -i -n mission-control -f mission-control-values.yaml center/jfrog/mission-control
helm upgrade xray -i -n xray -f xray-values.yaml center/jfrog/xray
helm upgrade distribution -i -n distribution -f distribution-values.yaml center/jfrog/distribution
helm upgrade pipelines -i -n pipelines -f pipelines-values.yaml center/jfrog/pipelines
helm upgrade artifactory-edge -i -n artifactory-edge -f artifactory-edge-values.yaml center/jfrog/artifactory
