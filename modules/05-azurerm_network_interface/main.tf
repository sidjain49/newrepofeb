resource "azurerm_network_interface" "nic01" {
for_each = var.nic1
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

   dynamic "ip_configuration" {
    for_each = each.value.ip_configuration
    content {
     name                          = ip_configuration.value.ipname
    subnet_id                     = data.azurerm_subnet.sub_data[each.key].id
    private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
    public_ip_address_id = data.azurerm_public_ip.pip_data[each.key].id   
      
    }
    
  }
}
#  subnet_id                     = azurerm_subnet.example.id
