module "rgmodule"{
 source = "../../modules/01-azurerm_resource_group" 
   rg=var.rg
}
module "vnetblock" {
source = "../../modules/02-azurerm_virtual_network"
vnt=var.vnt
depends_on = [ module.rgmodule ]
}
module "subnetblock" {
 source = "../../modules/03-azurerm_subnet" 
 subn1 = var.subn1  
 depends_on = [ module.vnetblock ]
  
}
module "publicblock" {
 source = "../../modules/04-azurerm_public_ip"
  pip1 = var.pip1
  depends_on = [ module.vnetblock,module.subnetblock ]

}
module "nic" {
source = "../../modules/05-azurerm_network_interface"
nic1 = var.nic1
depends_on = [ module.rgmodule,module.vnetblock,module.subnetblock,module.publicblock ]
}

module "vm" {
  source = "../../modules/06-azurerm_virtual_machine"
  vm1=var.vm1
  depends_on = [ module.rgmodule,module.vnetblock,module.subnetblock,module.publicblock,module.nic ]
  
}