variable "cron" {
  type        = string
  description = "The cron"
}

variable "description" {
  type        = string
  description = "The description of the pipeline schedule"
}

variable "project" {
  type        = string
  description = "The name or id of the project to add the schedule to"
}

variable "ref" {
  type        = string
  description = "The branch/tag name to be triggered"
}

variable "active" {
  type        = bool
  default     = true
  description = "The activation of pipeline schedule"
}

variable "cron_timezone" {
  type        = string
  default     = null
  description = "The timezone"
}

variable "take_ownership" {
  type        = bool
  default     = false
  description = "When set to true, the user represented by the token running Terraform will take ownership of the scheduled pipeline prior to editing it"
}
