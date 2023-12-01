
################################################################################
# Cluster
################################################################################

output "cluster_arn" {
  description = "The ARN of the ElastiCache Cluster"
  value       = try(aws_elasticache_cluster.this[0].arn, null)
}

output "cluster_engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine"
  value       = try(aws_elasticache_cluster.this[0].engine_version_actual, null)
}

output "cluster_cache_nodes" {
  description = "List of node objects including `id`, `address`, `port` and `availability_zone`"
  value       = try(aws_elasticache_cluster.this[0].cache_nodes, null)
}

output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended"
  value       = try(aws_elasticache_cluster.this[0].cluster_address, null)
}

output "cluster_configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery"
  value       = try(aws_elasticache_cluster.this[0].configuration_endpoint, null)
}

################################################################################
# Replication Group
################################################################################

output "rep_group_arn" {
  description = "ARN of the created ElastiCache Replication Group"
  value       = try(aws_elasticache_replication_group.this[0].id, null)
}

output "rep_group_engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine"
  value       = try(aws_elasticache_replication_group.this[0].engine_version_actual, null)
}

output "rep_group_coniguration_endpoint_address" {
  description = "Address of the replication group configuration endpoint when cluster mode is enabled"
  value       = try(aws_elasticache_replication_group.this[0].configuration_endpoint_address, null)
}

output "rep_group_id" {
  description = "ID of the ElastiCache Replication Group"
  value       = try(aws_elasticache_replication_group.this[0].id, null)
}

output "rep_group_member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group"
  value       = try(aws_elasticache_replication_group.this[0].member_clusters, null)
}

output "rep_group_primary_endpoint_address" {
  description = "Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled"
  value       = try(aws_elasticache_replication_group.this[0].primary_endpoint_address, null)
}

output "rep_group_reader_endpoint_address" {
  description = "Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled"
  value       = try(aws_elasticache_replication_group.this[0].reader_endpoint_address, null)
}
################################################################################
# Subnet Group
################################################################################

output "subnet_group_name" {
  description = "The ElastiCache subnet group name"
  value       = module.subnet_group.name
}

output "subnet_group_ids" {
  description = "The ElastiCache subnet group IDs"
  value       = module.subnet_group.ids
}

################################################################################
# Parameter Group
################################################################################

output "parameter_group_name" {
  description = "The ElastiCache parameter group name"
  value       = module.parameter_group.name
}

output "parameter_group_id" {
  description = "The ElastiCache parameter group id"
  value       = module.parameter_group.id
}
