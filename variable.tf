variable "storage_account_variables" {
  type = map(object({
    storage_account_name                     = string
    storage_account_resource_group_name      = string
    storage_account_location                 = string
    account_kind                             = string
    account_tier                             = string
    account_replication_type                 = string
    cross_tenant_replication_enabled         = bool
    access_tier                              = string
    edge_zone                                = string
    https_traffic_only_enabled               = bool
    min_tls_version                          = string
    allow_nested_items_to_be_public          = bool
    shared_access_key_enabled                = bool
    public_network_access_enabled            = bool
    default_to_oauth_authentication          = bool
    is_hns_enabled                           = bool
    nfsv3_enabled                            = bool
    large_file_share_enabled                 = bool
    queue_encryption_key_type                = string
    table_encryption_key_type                = string
    infrastructure_encryption_enabled        = bool
    sftp_enabled                             = bool
  }))
}
