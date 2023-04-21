module namespace {
    source = "../Modules/namespace/module"
    namespace = "dev
 }



module deployment {
    source = "../Modules/App-Deployment
    name      = var.name
    namespace = var.namespace
    chart     = "../Charts/application"
    values = <<EOF


replicaCount: 1

image:
  repository: nginx
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: ""

EOF
}