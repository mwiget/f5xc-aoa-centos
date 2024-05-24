module "centos-25" {
  #  count = 0
  source                = "./appstack"
  f5xc_cluster_name     = format("%s-centos-25", var.project_prefix)
  master_nodes_count    = 3
  worker_nodes_count    = 4
  slo_network           = "ves-system/sb-infra-march-eno5np0-251-vfio"
  original_nic          = "enp6s0"
  f5xc_rhel9_container  = "us-west1-docker.pkg.dev/solutions-team-280017/vesio-ver9-ce/centos-ce:7.2009.5"
  node_template         = "centos-node-template.yaml"
  operating_system_version  = "7.2009.25"
  volterra_software_version = "crt-20230419-2365"
  f5xc_tenant           = var.f5xc_tenant
  f5xc_api_url          = var.f5xc_api_url
  f5xc_namespace        = var.f5xc_namespace
  f5xc_api_token        = var.f5xc_api_token
  f5xc_api_ca_cert      = var.f5xc_api_ca_cert
  owner_tag             = var.owner
  f5xc_kubeconfig       = var.f5xc_kubeconfig
  admin_password        = var.admin_password
  f5xc_cluster_labels   = { "site-mesh" : format("%s", var.project_prefix) }
  ssh_public_key        = file(var.ssh_public_key_file)
  master_node_cpus      = 4
  worker_node_cpus      = 4
  master_node_memory    = 16384
  worker_node_memory    = 16384
  is_sensitive          = false
  f5xc_cluster_latitude = 47.18
  f5xc_cluster_longitude = 8.47
  kubevirt              = false
  # f5xc_tunnel_type      = "SITE_TO_SITE_TUNNEL_SSL"
  #f5xc_http_proxy       = "http://10.200.2.30:3128"
}

