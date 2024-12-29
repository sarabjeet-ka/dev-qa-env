storage_account_variables = {
  qa_storage_account = {
    storage_account_name                  = "qastoracc28092000"
    storage_account_resource_group_name   = "sarab-rg"
    storage_account_location              = "Central India"
    account_kind                          = "StorageV2"
    account_tier                          = "Standard"
    account_replication_type              = "LRS"
    cross_tenant_replication_enabled      = false
    access_tier                           = "Hot"
    edge_zone                             = null
    https_traffic_only_enabled            = true
    min_tls_version                       = "TLS1_2"
    allow_nested_items_to_be_public       = false
    shared_access_key_enabled             = true
    public_network_access_enabled         = true
    default_to_oauth_authentication       = false
    is_hns_enabled                        = false
    nfsv3_enabled                         = false
    large_file_share_enabled              = false
    queue_encryption_key_type             = "Account"
    table_encryption_key_type             = "Account"
    infrastructure_encryption_enabled     = false
    sftp_enabled                          = false
  }
}
