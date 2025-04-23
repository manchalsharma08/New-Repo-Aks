variable "newrg" {
  description = "The name of the resource group"
  type        = map(any)


}
variable "newaks" {
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





