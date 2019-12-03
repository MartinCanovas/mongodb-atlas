variable "org_id" { 
  default = ""
}

variable "project_name" {
  default = "Terraform - Project"
}

variable "cluster_name" {
  default = "Cluster0"
}

variable "db_username" {
  default = "terraform"
}

variable "db_user_password" {
  default = "terraform"
}

variable "whitelist_ip" {
  default = "0.0.0.0/0"
}

variable "whitelist_ip_desc" { 
  default = "Added by Terraform" 
}

variable "replication_factor" {
  description = "Number of members in the replica set"
  default     = "3"
}

variable "mongo_db_major_version" {
  description = "MongoDB version"
  default     = "4.2"
}

variable "provider_instance_size_name" {
  description = "Instance type"
  default     = "M30"
}

variable "provider_region_name" {
  description = "Provider region"
  default     = "US_EAST_1"
}
