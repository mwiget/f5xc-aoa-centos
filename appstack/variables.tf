variable "f5xc_cluster_latitude" {
  type = number
  default = 37
}

variable "f5xc_cluster_longitude" {
  type = number
  default = -121
}

variable "f5xc_api_url" {
  type = string
}

variable "f5xc_api_ca_cert" {
  type    = string
  default = ""
}

variable "f5xc_api_token" {
  type = string
}

variable "f5xc_tenant" {
  type = string
}

variable "f5xc_namespace" {
  type = string
}

variable "f5xc_kubeconfig" {
  type = string
}

variable "f5xc_rhel9_container" {
  type = string
}

variable "ssh_public_key" {
  type = string
  default = ""
}

variable "f5xc_registration_wait_time" {
  type    = number
  default = 60
}

variable "f5xc_registration_retry" {
  type    = number
  default = 20
}

variable "f5xc_cluster_name" {
  type = string
}

variable "master_nodes_count" {
  type = number
  default = 1
}

variable "worker_nodes_count" {
  type = number
  default = 0
}

variable "master_node_cpus" {
  type    = number
  default = 4
}
variable "worker_node_cpus" {
  type    = number
  default = 4
}
variable "master_node_memory" {
  type    = number
  default = 16384
}
variable "worker_node_memory" {
  type    = number
  default = 16384
}
variable "slo_network" {
  type = string
  default = ""
}
variable "admin_password" {}

variable "f5xc_cluster_labels" {
  type = map(string)
}

variable "owner_tag" {}
variable "is_sensitive" {}
variable "kubevirt" {
  type = bool
  default = false
}

variable "f5xc_tunnel_type" {
  type    = string
  default = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
}

variable "f5xc_http_proxy" {
  type    = string
  default = ""
}

variable "node_template" {
  type    = string
  default = "rhel9-node-template.yaml"
}

variable "original_nic" {
  type    = string
  default = "eth0"
}

variable "operating_system_version" {
  type    = string
}

variable "volterra_software_version" {
  type    = string
}
