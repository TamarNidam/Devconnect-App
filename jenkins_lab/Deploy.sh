docker build -t jenkins_lab .
docker tag jenkins_lab <artifact-registry-location>/jenkins_lab:<version>
docker push <artifact-registry-location>/jenkins_lab:<version>
