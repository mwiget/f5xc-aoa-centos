
output "clusters" {
  value = {
    tiny = module.centos-10
    tiny = module.centos-11
    tiny = module.centos-25
  }
  sensitive = true
}
