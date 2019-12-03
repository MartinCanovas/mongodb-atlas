output "mongo_uri" {
  value = mongodbatlas_cluster.my_cluster.mongo_uri_with_options
}
