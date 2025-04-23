module "rg" {
  source = "../../Child/Resource-Group"
  rg     = var.newrg
}

module "aksh" {
  source = "../../Child/Aks-Cluster"
  aks    = var.newaks
  depends_on = [ module.rg ]
}
