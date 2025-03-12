variable "public_key" {
  type        = string
  description = "Public Programmatic API key to authenticate to Atlas"
}
variable "private_key" {
  type        = string
  description = "Private Programmatic API key to authenticate to Atlas"
}
variable "org_id" {
  type        = string
  description = "MongoDB Organization ID"
  default = "5c5c939079358e2b051bc839"
}
variable "project_id" {
  type        = string
  description = "The MongoDB Atlas Project ID"
  default = "6165a706781d054e85f67f97"
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
variable "dbuser_password" {
  type        = string
  description = "MongoDB Atlas Database User Password"
}
variable "database_name" {
  type        = string
  description = "The database in the cluster to limit the database user to, the database does not have to exist yet"
}
variable "ip_address" {
  type        = string
  description = "The IP address that the cluster will be accessed from, can also be a CIDR range or AWS security group"
}



