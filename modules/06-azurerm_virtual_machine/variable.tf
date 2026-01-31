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
