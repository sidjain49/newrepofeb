variable "nic1" {
 type = map(object({
   name = string
   location=string
   resource_group_name=string
   virtual_network_name = string
   ip_configuration = map(object({
     ipname =  string
     private_ip_address_allocation=string

   }))
   
 }))   
  
}
