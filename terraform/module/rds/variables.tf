# variables specific to RDS module 

variable "db_password" {
  description = "The password for the RDS database"
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
  default     = "db.t3.medium"
}
