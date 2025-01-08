terraform {
  backend "azurerm" {
    resource_group_name  = "sarab-rg"  
    storage_account_name = "statefiles2428062000"                     
    container_name       = "statefile"                      
    key                  = "demo.terraform.tfstate"    
  }
}
