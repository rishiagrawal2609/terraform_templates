variable "number_test" {
  type = number
  default = 600
}

output "test" {
  value = var.number_test
  
}