variable "proj-name" {
description = "name of the project"
type = string
}

variable "project_id" {
  description = "Project ID"
  type = string
}

variable "org_id" {
  description = "org ID"
  type = string
  default = null
}

variable "folder_id" {
  description = "FolderID"
  default = null
}

variable "billing_account" {
  description = "Billing Account"
  default = null
  type = string
}
