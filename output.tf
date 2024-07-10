output "elasticache_cluster_endpoint" {
  value = aws_elasticache_replication_group.example.arn
}
