image="tamarnidam-webapp:1.0"
artifact_registry="me-west1-docker.pkg.dev/devconnect-final-project/tamar-nidam-artifacts/$image"
gcloud auth configure-docker me-west1-docker.pkg.dev
docker tag "$image" "$artifact_registry"
docker push "$artifact_registry"