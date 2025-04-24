newrg = {
  rg1 = {
    name_rg  = "alok-rg"
    location = "westus"
  }
  # rg2 = {
  #   name_rg  = "alok02-rg"
  #   location = "westus"
  # }
}

newaks = {
  cluster1 = {
    name_aks = "myaks01"
    location = "westus"
    rg_name  = "alok-rg"
    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_DS2_v2"
    }
  }

  #   cluster2 = {
  #     name_aks = "aks-cluster-west"
  #     location = "West US"
  #     rg_name  = "rg-west"
  #     default_node_pool = {
  #       name       = "mainpool"
  #       node_count = 3
  #       vm_size    = "Standard_DS3_v2"
  #     }
  #   }
}
