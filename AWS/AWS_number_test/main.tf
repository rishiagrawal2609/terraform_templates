variable "number_test" {
  type = number
  default = 600
  validation {
    condition = 0 >=  var.number_test >= 500
    error_message = "The number must be greater than 500"
  }
}

output "test" {
  value = var.number_test
  
}