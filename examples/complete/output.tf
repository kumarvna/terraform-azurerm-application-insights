output "application_insights_id" {
  description = "The ID of the Application Insights component"
  value       = module.application-insights.application_insights_id
}

output "app_insights_app_id" {
  description = "The App ID associated with this Application Insights component"
  value       = module.application-insights.app_insights_app_id
}

output "app_insights_instrumentation_key" {
  description = "he Instrumentation Key for this Application Insights component"
  value       = module.application-insights.app_insights_instrumentation_key
  sensitive   = true
}

output "app_insights_connection_string" {
  description = "The Connection String for this Application Insights component"
  value       = module.application-insights.app_insights_connection_string
  sensitive   = true
}
