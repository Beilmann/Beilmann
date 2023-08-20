variable "powervs_zone" {
  description = "IBM Cloud PowerVS zone."
  type        = string
  validation {
    condition     = contains(["syd04", "syd05", "eu-de-1", "eu-de-2", "lon04", "lon06", "us-east", "us-south", "dal10", "dal12", "tok04", "osa21", "sao01", "mon01", "tor01"], var.powervs_zone)
    error_message = "Only Following DC values are supported : syd04, syd05, eu-de-1, eu-de-2, lon04, lon06, us-east, us-south, dal10, dal12, tok04, osa21, sao01, mon01, tor01"
  }
}
