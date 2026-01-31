variable "rg" {
  type = map(object({
    name = string
    location = string
  }))  
}

variable "vnt" {
  type = map(object({
    name = string
    location=string
   resource_group_name=string
   address_space  = list(string)

  }))  
}

variable "subn1"{
  type = map(object({
    name = string
    resource_group_name=string
    virtual_network_name=string
    address_prefixes= list(string)
  }))  
}

variable "pip1" {
  type = map(object({
    name = string
    resource_group_name=string
    location=string
    allocation_method=string
  }))
}

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

variable "vm1" {
 type = map(object({
   name = string
   resource_group_name = string
    location=string
    size = string
    admin_password=string
    admin_username=string
    caching=string
    storage_account_type=string
    publisher=string
    offer =string
    sku=string
    version=string
 }))   
  
}

