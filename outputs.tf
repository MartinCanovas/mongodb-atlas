output "mongo_uri" {
  value = mongodbatlas_cluster.my_cluster.mongo_uri_with_options
}

output "connection_strings" {
  value = mongodbatlas_cluster.my_cluster.connection_strings
}
