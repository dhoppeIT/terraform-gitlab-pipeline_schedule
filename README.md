# terraform-gitlab-pipeline_schedule

Terraform module to manage the following Twingate resources:

* gitlab_pipeline_schedule

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_pipeline_schedule" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-pipeline-schedule/local"
  version = "1.0.0"

  project     = "example-project-48165"
  description = "Example (schedule)"
  ref         = "refs/heads/main"
  cron        = "0 1 * * *"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_pipeline_schedule.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/pipeline_schedule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_active"></a> [active](#input\_active) | The activation of pipeline schedule | `bool` | `true` | no |
| <a name="input_cron"></a> [cron](#input\_cron) | The cron | `string` | n/a | yes |
| <a name="input_cron_timezone"></a> [cron\_timezone](#input\_cron\_timezone) | The timezone | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the pipeline schedule | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The name or id of the project to add the schedule to | `string` | n/a | yes |
| <a name="input_ref"></a> [ref](#input\_ref) | The branch/tag name to be triggered | `string` | n/a | yes |
| <a name="input_take_ownership"></a> [take\_ownership](#input\_take\_ownership) | When set to true, the user represented by the token running Terraform will take ownership of the scheduled pipeline prior to editing it | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this Terraform resource |
| <a name="output_owner"></a> [owner](#output\_owner) | The ID of the user that owns the pipeline schedule |
| <a name="output_pipeline_schedule_id"></a> [pipeline\_schedule\_id](#output\_pipeline\_schedule\_id) | The pipeline schedule id |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
