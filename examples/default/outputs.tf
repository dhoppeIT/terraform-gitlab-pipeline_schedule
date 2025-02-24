output "id" {
  description = "The ID of this Terraform resource"
  value       = module.gitlab_pipeline_schedule.id
}

output "owner" {
  description = "The ID of the user that owns the pipeline schedule"
  value       = module.gitlab_pipeline_schedule.owner
}

output "pipeline_schedule_id" {
  description = "The pipeline schedule id"
  value       = module.gitlab_pipeline_schedule.pipeline_schedule_id
}
