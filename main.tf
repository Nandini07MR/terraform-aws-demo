terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
   }
}
 
provider "aws" {
  region = "us-east-1"
}
 
resource "aws_docdb_cluster" "example_cluster" {
  cluster_identifier      = "example-cluster"
  engine                  = "docdb"
  master_username         = "nandu"
  master_password         = "password123"
  storage_encrypted       = true
  backup_retention_period = 1
  skip_final_snapshot = true
  preferred_backup_window = "07:00-09:00"
  //snapshot_identifier     = "manual-snapshot"
// publicly_accessible     = false
  enabled_cloudwatch_logs_exports = ["audit"]
  deletion_protection     = false
  apply_immediately = true
}
