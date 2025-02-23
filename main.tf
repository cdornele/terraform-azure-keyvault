#--------------------------------------------*--------------------------------------------
# Module: Azure Key Vault - Main
#--------------------------------------------*--------------------------------------------

resource "azurerm_key_vault" "this" {
  name                        = var.key_vault_name
  location                    = var.key_vault_location
  resource_group_name         = var.key_vault_resource_group_name
  tenant_id                   = var.key_vault_tenant_id
  sku_name                    = var.key_vault_sku_name
  enabled_for_disk_encryption = var.key_vault_enabled_for_disk_encryption
  purge_protection_enabled    = var.key_vault_purge_protection_enabled
  tags                        = var.key_vault_tags

  dynamic "network_acls" {
    for_each = var.key_vault_network_acls != {} && var.key_vault_network_acls_deny_all == false ? [1] : []
    content {
      bypass         = lookup(var.key_vault_network_acls, "bypass", null)
      default_action = lookup(var.key_vault_network_acls, "default_action", null)
      ip_rules       = lookup(var.key_vault_network_acls, "ip_rules" , null)
      virtual_network_subnet_ids = lookup(var.key_vault_network_acls, "virtual_network_subnet_ids" , null)
    }
  }

  dynamic "network_acls" {
    for_each = var.key_vault_network_acls_deny_all == true ? [1] : []
    content {
      bypass                     = "AzureServices"
      default_action             = "Deny" 
    }
  }

  timeouts {
    delete = "20m"
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

# end
#--------------------------------------------*--------------------------------------------