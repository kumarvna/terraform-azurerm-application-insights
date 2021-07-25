# Azure Application Insights Terraform module

Application Insights, a feature of Azure Monitor, is an extensible Application Performance Management (APM) service for developers and DevOps professionals. Use it to monitor your live applications. It will automatically detect performance anomalies, and includes powerful analytics tools to help you diagnose issues. This terraform module quickly creates.

## Module Usage

```terraform
# Azurerm Provider configuration
provider "azurerm" {
  features {}
}

module "application-insights" {
  source  = "kumarvna/application-insights/azurerm"
  version = "1.0.0"

  # By default, this module will not create a resource group. Location will be same as existing RG.
  # proivde a name to use an existing resource group, specify the existing resource group name, 
  resource_group_name = "rg-shared-westeurope-01"

  application_insights_config = {
    mydemoappinsightworkspace = {
      application_type = "web"
    }
  }
}
```

## Terraform Usage

To run this example you need to execute following Terraform commands

```hcl
terraform init
terraform plan
terraform apply
```

Run `terraform destroy` when you don't need these resources.
