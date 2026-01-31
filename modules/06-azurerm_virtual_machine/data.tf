data "azurerm_network_interface" "nicdtat" {
    for_each = var.vm1
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}