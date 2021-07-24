#---------------------------------------------------------
# Resource Group selection - Default is "true"
#----------------------------------------------------------
data "azurerm_resource_group" "rgrp" {
  name = var.resource_group_name
}

data "azurerm_client_config" "main" {}

#---------------------------------------------------------
# Application Insights resoruces - Default is "true"
#----------------------------------------------------------
resource "azurerm_application_insights" "main" {
  for_each                              = var.application_insights_config
  name                                  = lower(format("appi-%s", each.key))
  location                              = data.azurerm_resource_group.rgrp.location
  resource_group_name                   = data.azurerm_resource_group.rgrp.name
  application_type                      = each.value["application_type"]
  daily_data_cap_in_gb                  = each.value["daily_data_cap_in_gb"]
  daily_data_cap_notifications_disabled = each.value["daily_data_cap_notification_disabled"]
  retention_in_days                     = each.value["retention_in_days"]
  sampling_percentage                   = each.value["sampling_percentage"]
  disable_ip_masking                    = each.value["disable_ip_masking"]
  tags                                  = merge({ "ResourceName" = lower(format("appi-%s", each.key)) }, var.tags, )
}
