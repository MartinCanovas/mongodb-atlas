# Create a Cluster
resource "mongodbatlas_cluster" "my_cluster" {
  project_id                   = var.project.id
  name                         = var.cluster_name
  cluster_type                 = "REPLICASET"
  replication_factor           = var.replication_factor
  backup_enabled               = false
  provider_backup_enabled      = true
  pit_enabled                  = false
  auto_scaling_disk_gb_enabled = true
  mongo_db_major_version       = var.mongo_db_major_version

  //Provider Settings "block"
  provider_name               = "AWS"
  disk_size_gb                = 100
  provider_disk_iops          = 300
  provider_volume_type        = "STANDARD"
  provider_encrypt_ebs_volume = true
  provider_instance_size_name = var.provider_instance_size_name
  provider_region_name        = var.provider_region_name
}

# Create a Database User
resource "mongodbatlas_database_user" "db_user" {
  username      = var.db_username
  password      = var.db_user_password
  project_id    = var.project.id
  database_name = "admin"

  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
}

# Create an IP Whitelist
resource "mongodbatlas_project_ip_whitelist" "ip_whitelist" {
  project_id = var.project.id
  count      = length(var.whitelist_ip)
  cidr_block = var.whitelist_ip[count.index]
  comment    = var.whitelist_ip_desc
}

resource "mongodbatlas_auditing" "auditing" {
  project_id                  = var.project_id
  audit_filter                = "{ 'atype': 'authenticate', 'param': {   'user': 'auditAdmin',   'db': 'admin',   'mechanism': 'SCRAM-SHA-1' }}"
  audit_authorization_success = false
  enabled                     = false
}
