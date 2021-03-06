variable "name" {
  description = "(Required) The name of the team."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "description" {
  description = "(Optional) A description of the team."
  type        = string
  default     = ""
}

#DO NOT USE SECRET TEAMS AS THEY CAN'T BE NESTED
variable "privacy" {
  description = "(Optional) The level of privacy for the team. Must be one of secret or closed."
  type        = string
  default     = "closed"
}

variable "parent_team_id" {
  description = "(Optional) The ID of the parent team, if this is a nested team."
  type        = number
  default     = null
}

variable "maintainers" {
  description = "(Optional) A list of users that will be added to the current team with maintainer permissions."
  type        = set(string)
  default     = []
}

variable "members" {
  description = "(Optional) A list of users that will be added to the current team with member permissions."
  type        = set(string)
  default     = []
}

variable "admin_repositories" {
  description = "(Optional) A list of repository names the current team should get admin (full) permission to."
  type        = set(string)
  default     = []
}

variable "maintain_repositories" {
  description = "(Optional) A list of repository names the current team should get push (maintain) permission to."
  type        = set(string)
  default     = []
}

variable "push_repositories" {
  description = "(Optional) A list of repository names the current team should get push (read-write) permission to."
  type        = set(string)
  default     = []
}

variable "triage_repositories" {
  description = "(Optional) A list of repository names the current team should get push (triage) permission to."
  type        = set(string)
  default     = []
}

variable "pull_repositories" {
  description = "(Optional) A list of repository names the current team should get pull (read-only) permission to."
  type        = set(string)
  default     = []
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends_on. Default is []."
  default     = []
}