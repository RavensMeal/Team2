resource "kubernetes_namespace" "example" {
  metadata {
    name = var.namespace
    labels = {
      name = "application"
    }
  }
}

resource "kubernetes_limit_range" "example" {
  metadata {
    name = "terraform-example"
    namespace = kubernetes_namespace.example.id
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = "20"
        memory = "20G"
      }
    }
    limit {
      type = "PersistentVolumeClaim"
      min = {
        storage = "24M"
      }
    }
    limit {
      type = "Container"
      default = {
        cpu    = "1"
        memory = "2G"
      }
    }
  }
}