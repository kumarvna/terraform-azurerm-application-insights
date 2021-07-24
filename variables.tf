variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = ""
}

variable "application_insights_config" {
  type = map(object({
    application_type                     = string
    daily_data_cap_in_gb                 = optional(number)
    daily_data_cap_notification_disabled = optional(bool)
    retention_in_days                    = optional(number)
    sampling_percentage                  = optional(number)
    disable_ip_masking                   = optional(string)
  }))
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
