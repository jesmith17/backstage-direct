variable "project_id" {
  type        = string
  description = "The MongoDB Atlas Project ID"
}
variable "instance_size" {
  type        = string
  description = "size of the mongodb instance to create"
  default     = "M10"
}

variable "cluster_name" {
  type        = string
  description = "The MongoDB Atlas Cluster Name"
}
variable "cloud_provider" {
  type        = string
  description = "The cloud provider to use, must be AWS, GCP or AZURE"
}
variable "region" {
  type        = string
  description = "MongoDB Atlas Cluster Region, must be a region for the provider given"
}
variable "dbuser" {
  type        = string
  description = "MongoDB Atlas Database User Name"
}
variable "ip_address" {
  type        = string
  description = "The IP address that the cluster will be accessed from, can also be a CIDR range or AWS security group"
}



