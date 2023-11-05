locals {
  workspaces_suffix = terraform.workspace == "default" ? "" : terraform.workspace
#Resource Group
  rg_name = terraform.workspace == "default" ? "${var.base_name}-${var.rg_name}" : "${var.base_name}-${var.rg_name}-${local.workspaces_suffix}"
#Storage account
  sa_name = terraform.workspace == "default" ? "${var.base_name}${var.sa_name}${random_string.random_string.result}" : "${var.base_name}${var.sa_name}${random_string.random_string.result}${local.workspaces_suffix}"
  sc_name = terraform.workspace == "default" ? "${var.base_name}${var.sa_name}" : "${var.base_name}${var.sc_name}-${local.workspaces_suffix}"
#Key Vault
  kv_name = terraform.workspace == "default" ? "${var.base_name}${var.kv_name}${random_string.random_string.result}" : "${var.base_name}${var.kv_name}${random_string.random_string.result}-${local.workspaces_suffix}"
  sa_accesskey_name = terraform.workspace == "default" ? "${var.sa_accesskey_name}${azurerm_storage_account.sa.name}" : "${var.sa_accesskey_name}${azurerm_storage_account.sa.name}-${local.workspaces_suffix}"
#Virtual network
    vnet_name = terraform.workspace == "default" ? var.vnet_name : "${var.vnet_name}-${local.workspaces_suffix}"
    nsg_name = terraform.workspace == "default" ? var.nsg_name : "${var.nsg_name}-${local.workspaces_suffix}"
    subnet_name = terraform.workspace == "default" ? var.subnet_name : "${var.subnet_name}-${local.workspaces_suffix}"

#virtualmachine
    vm_nic_name = terraform.workspace == "default" ? "${var.base_name}-${var.vm_nic_name}" : "${var.base_name}-${var.vm_nic_name}-${local.workspaces_suffix}"
    vm_name = terraform.workspace == "default" ? "${var.base_name}-${var.vm_name}" : "${var.base_name}-${var.vm_name}-${local.workspaces_suffix}"
    pip_name = terraform.workspace == "default" ? "${var.base_name}-${var.pip_name}" : "${var.base_name}-${var.pip_name}-${local.workspaces_suffix}"
    vm_username = terraform.workspace == "default" ? "${var.base_name}-${var.vm_username}" : "${var.vm_username}-${local.workspaces_suffix}"

}


