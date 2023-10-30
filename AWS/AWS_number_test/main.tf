variable "number_test" {
  type = number
  default = 600
  MinValue = 0
  MaxValue = 1000
}

output "test" {
  value = var.number_test
  
}