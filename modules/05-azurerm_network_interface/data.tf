data "azurerm_subnet" "sub_data" {
    for_each = var.nic1
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "pip_data" {
    for_each = var.nic1
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}