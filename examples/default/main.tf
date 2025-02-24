module "gitlab_pipeline_schedule" {
  source = "../../"

  project     = "example-project-48165"
  description = "Example (schedule)"
  ref         = "refs/heads/main"
  cron        = "0 1 * * *"
}
