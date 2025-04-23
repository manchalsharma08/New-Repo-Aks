

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  for_each = var.aks

  name                = each.value.name_aks
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = "${each.value.name_aks}-dns"

  default_node_pool {
    name       = each.value.default_node_pool.name
    node_count = each.value.default_node_pool.node_count
    vm_size    = each.value.default_node_pool.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}

output "kube_config" {
  value = {
    for k, cluster in azurerm_kubernetes_cluster.aks_cluster :
    k => cluster.kube_config_raw
  }
  sensitive = true
}

output "client_certificate" {
  value = {
    for k, cluster in azurerm_kubernetes_cluster.aks_cluster :
    k => cluster.kube_config[0].client_certificate
  }
  sensitive = true
}
