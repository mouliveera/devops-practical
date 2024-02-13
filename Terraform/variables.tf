variable "project_id" {
  description = "The ID of the GCP project"
}

variable "region" {
  description = "The GCP region for the GKE cluster"
  default     = "us-west1"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  default     = "dev-gke-cluster"
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
  default     = 3
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
  default     = "e2-standard-2"
}

