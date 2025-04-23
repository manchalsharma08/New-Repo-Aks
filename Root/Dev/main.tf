module "rg" {
    source = "../Child/Resource-Group"
    rg     = var.newrg
}

module "aks" {
    source = "../Child/aks-cluster"
    aks     = var.newaks
}

