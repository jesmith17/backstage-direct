resource "mongodbatlas_cluster" "cluster" {
  project_id   = var.project_id
  name         = var.cluster_name
  cluster_type = "REPLICASET"
  replication_specs {
    num_shards = 1
    regions_config {
      region_name     = var.region
      electable_nodes = 3
      priority        = 7
      read_only_nodes = 0
    }
  }
  cloud_backup = true
  auto_scaling_disk_gb_enabled = true
  mongo_db_major_version       = "8.0"

  # Provider Settings "block"
  provider_name               = "AWS"
  provider_region_name        = var.region
  provider_instance_size_name = var.instance_size
}

output "connection_strings" {
  value = mongodbatlas_cluster.cluster.connection_strings[0].standard_srv
}


