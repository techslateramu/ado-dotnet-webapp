variable "environment" { default = "dev" } # should be coming from env folder for ex: tst.tfvars
variable "tags" {
    default = {
        "MainProject" = "TechSlate"
        "SubProject"  = "WebApp"
    }
}

variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_TENANT_ID" {}
variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}

variable "specific_tags"                                { default = "" }
variable "main_project"                                 { default = "fend" }
variable "sub_project"                                  { default = "01" }
variable "location"                                     { default = "uksouth" } # https://github.com/claranet/terraform-azurerm-regions/blob/master/regions.tf

# app service plan
variable "asp_sku_size"                                 { default = "S2" }
variable "asp_os_type"                                  { default = "Windows" }

# key vault
variable "soft_delete_retention_days"                   { default = "7" }

# app insights
variable "app_in_application_type"                      { default = "web" }
variable "app_in_daily_data_cap_in_gb"                  { default = "1" }
variable "app_in_daily_data_cap_notifications_disabled" { default = false  }
variable "app_in_disable_ip_masking"                    { default = false  }
variable "app_in_retention_in_days"                     { default = 30 }