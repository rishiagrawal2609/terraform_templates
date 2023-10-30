module "storage-account_example_main" {
  source  = "claranet/storage-account/azurerm"
  version = "7.5.0"
  client_name = "cs-custom"
  environment = "dev"
  location = central-india
}