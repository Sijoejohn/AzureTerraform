resource "azurerm_resource_group_template_deployment" "azstorage" {
  name                = "storage-azrm-template-deploy"
  resource_group_name = "rg-storage"
  deployment_mode     = "Incremental"
  template_content    = file("modules/storage/template/storage.json",)
  parameters_content  = jsonencode({
  
  storageAccountType = { value = var.storageAccountType }
  storageAccountName = { value = var.storageAccountName }
  })
  }
  