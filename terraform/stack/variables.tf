# You can define variables specific to RDS module here if needed
variable "db_password" {
  description = "The password for the RDS database"
  type        = string
}

variable "shared_credentials_files" {
  description = "location of aws credentials"
  type        = string
}

variable "subnets" {
  type        = list(string)
  description = "List of subnet IDs"
  #default     = []
}
variable "instance_class" {
  description = "The instance class for the Aurora PostgreSQL database"
  type        = string
  default     = "db.t3.medium" # You can set a default value or leave it empty
}
