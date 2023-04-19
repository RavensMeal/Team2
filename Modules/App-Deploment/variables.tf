variable "name" {
  type        = string
  description = "- (Required) Chart release name."
}

variable "namespace" {
  type        = string
  default     = "default"
  description = "- (Optional) Namespace where to deploy resources to."
}

variable "chart" {
  type        = string
  description = "- (Required) Path for the Chart."
}

variable "values" {
  type        = string
  description = "- (Required) Values.yaml file."
}
