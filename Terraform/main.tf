provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true

  node_pool {
    name       = "default-pool"
    machine_type = var.machine_type
    initial_node_count = var.node_count
    autoscaling {
      min_node_count = var.node_count
      max_node_count = var.node_count * 2
    }
    node_config {
      oauth_scopes = [
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
      ]
    }
  }
}

