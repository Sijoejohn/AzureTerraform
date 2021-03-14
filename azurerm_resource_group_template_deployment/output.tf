output "storagename" {

         value = jsondecode(azurerm_resource_group_template_deployment.azstorage.output_content).storageAccountName.value
		 }
		 
output "storageAccountType" {

         value = jsondecode(azurerm_resource_group_template_deployment.azstorage.output_content).storageAccountType.value
		 }