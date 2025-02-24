output "id" {
  description = "The ID of this Terraform resource"
  value       = gitlab_pipeline_schedule.this.id
}

output "owner" {
  description = "The ID of the user that owns the pipeline schedule"
  value       = gitlab_pipeline_schedule.this.owner
}

output "pipeline_schedule_id" {
  description = "The pipeline schedule id"
  value       = gitlab_pipeline_schedule.this.pipeline_schedule_id
}
