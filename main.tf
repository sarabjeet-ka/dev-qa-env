resource "azurerm_storage_account" "storage_account" {
  for_each = var.storage_account_variables
  name = each.value.storage_account_name
  resource_group_name = each.value.storage_account_resource_group_name
  location = each.value.storage_account_location
  account_kind = each.value.account_kind
  account_tier = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  cross_tenant_replication_enabled = each.value.cross_tenant_replication_enabled
  access_tier = each.value.access_tier
  edge_zone = each.value.edge_zone
  https_traffic_only_enabled = each.value.https_traffic_only_enabled
  min_tls_version = each.value.min_tls_version
  allow_nested_items_to_be_public = each.value.allow_nested_items_to_be_public
  shared_access_key_enabled = each.value.shared_access_key_enabled
  public_network_access_enabled = each.value.public_network_access_enabled
  default_to_oauth_authentication = each.value.default_to_oauth_authentication
  is_hns_enabled = (each.value.account_tier == "Standard" || (each.value.account_tier == "Premium" && each.value.account_kind == "BlockBlobStorage") ) ? each.value.is_hns_enabled : false
  nfsv3_enabled = (((each.value.account_tier == "Standard" && each.value.account_kind == "StorageV2") || (each.value.account_tier == "Premium" && each.value.account_kind == "BlockBlobStorage")) && each.value.is_hns_enabled == true && (each.value.account_replication_type == "LRS" || each.value.account_replication_type == "RAGRS")) ? each.value.nfsv3_enabled : false
  large_file_share_enabled = each.value.large_file_share_enabled
  queue_encryption_key_type = (each.value.account_kind == "Storage" && each.value.queue_encryption_key_type == "Account") ? "Service" : each.value.queue_encryption_key_type
  table_encryption_key_type = (each.value.account_kind == "Storage" && each.value.table_encryption_key_type == "Account") ? "Service" : each.value.table_encryption_key_type
  infrastructure_encryption_enabled = (each.value.account_kind == "StorageV2" || (each.value.account_tier == "Premium" && (each.value.account_kind == "BlockBlobStorage" || each.value.account_kind == "FileStorage"))) ? each.value.infrastructure_encryption_enabled : false
  sftp_enabled = (each.value.is_hns_enabled == true) ? each.value.sftp_enabled : false
}
