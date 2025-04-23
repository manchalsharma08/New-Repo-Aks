variable "aks" {
  description = "Map of AKS cluster configurations"
  type = map(object({
    name_aks = string
    location = string
    rg_name  = string
    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })
  }))
}





