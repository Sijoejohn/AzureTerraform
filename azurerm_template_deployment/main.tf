resource "azurerm_template_deployment" "azstorage" {
  name                   = "storage-deploy-azrm-temp-deploy"
  resource_group_name    = "rg-storage"
  deployment_mode        = "Incremental"
  template_body          = file("modules/storage/template/storage.json",)
  parameters             = {
  
  storageAccountType = var.storageAccountType
  storageAccountName = var.storageAccountName
  }
  }
  