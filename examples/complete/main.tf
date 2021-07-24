# Azurerm Provider configuration
provider "azurerm" {
  features {}
}

module "application-insights" {
  //  source  = "kumarvna/application-insights/azurerm"
  //  version = "1.0.0"
  source = "../../"

  # By default, this module will not create a resource group. Location will be same as existing RG.
  # proivde a name to use an existing resource group, specify the existing resource group name, 
  resource_group_name = "rg-shared-westeurope-01"

  application_insights_config = {
    mydemoappinsightworkspace = {
      application_type = "web"
    }
  }
}
