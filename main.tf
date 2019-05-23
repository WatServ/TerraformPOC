# Configure the Azure Provider

provider "azurerm" {

# whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.28.0"
}

}
resource "azurerm_resource_group" "main" {
  name     = "rg_msilva"
  location = "canadacentral"
}

resource "azurerm_virtual_machine" “test” 
{
  name                = "tfpoc"
  resource_group_name = "${azurerm_resource_group.main.name}"
}
