
resource "digitalocean_kubernetes_cluster" "main_cluster" {
  name    = var.project_name
  region  = var.region
  version = "1.19.3-do.2"

  node_pool {
    name       = "default-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}

