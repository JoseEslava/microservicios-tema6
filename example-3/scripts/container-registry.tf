# Creates a container registry on Azure so that you can publish your Docker images.

resource "azurerm_container_registry" "container_registry" {
  name                = var.name_register
  resource_group_name = azurerm_resource_group.flixtube.name
  location            = var.location
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_hostname" {
  value = azurerm_container_registry.container_registry.login_server
}

output "registry_un" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "registry_pw" {
  sensitive = true
  value =   azurerm_container_registry.container_registry.admin_password
}
