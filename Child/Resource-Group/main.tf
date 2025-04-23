
resource "azurerm_resource_group" "aks_rg" {
    for_each = var.rg
  name     = each.value.name_rg
  location = each.value.location
}

