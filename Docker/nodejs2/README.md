# nodejs
This is node js app for building node apps   .
# Get path of registry
# Build docker image docker build 
docker build -t  us-central1-docker.pkg.dev/terraform-project-vika/nodejs/nodejs:3.0.1  .
# Login to artifactory
gcloud auth configure-docker us-central1-docker.pkg.dev
# Push docker image
docker push    us-central1-docker.pkg.dev/terraform-project-vika/nodejs/nodejs:3.0.1   


