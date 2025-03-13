# DATABASE USER  [Configure Database Users](https://docs.atlas.mongodb.com/security-add-mongodb-users/)
resource "mongodbatlas_database_user" "user" {
  username           = var.dbuser
  password           = var.dbuser_password
  project_id         = var.project_id
  auth_database_name = "admin"

  roles {
    role_name = "readWriteAnyDatabase"
    database_name = "admin"
  }
  labels {
    key   = "Name"
    value = "DB User1"
  }
}
output "user1" {
  value = mongodbatlas_database_user.user.username
}
