resource "azurerm_kubernetes_cluster" "keycloak_aks" {
  name                = "keycloak-aks"
  location            = var.location
  resource_group_name = azurerm_resource_group.keycloak_rg.name

  dns_prefix = "keycloak-aks"
  sku_tier   = "Free"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}
