resource "aws_db_subnet_group" "vention_db_subnet_group" {
  name        = "vention-db-subnet-group"
  subnet_ids  = var.subnets // Subnets in the VPC

  tags = {
    Name = "vention_db_subnet_group"
  }
}

resource "aws_rds_cluster" "demo_db_cluster" {
  cluster_identifier      = "demo-db"
  engine                  = "aurora-postgresql"
  master_username         = "msteruser"
  master_password         = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.vention_db_subnet_group.name
  skip_final_snapshot     = true
}

resource "aws_rds_cluster_instance" "demo_db_instance" {
  cluster_identifier  = aws_rds_cluster.demo_db_cluster.id
  instance_class      = var.instance_class
  engine              = "aurora-postgresql"
  identifier          = "demo-db-instance"
}