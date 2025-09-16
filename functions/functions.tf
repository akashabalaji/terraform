output "absolute_value" {    # abs is absolute value of a number is its distance from zero on the number line, without considering direction
    value =abs(var.num1)     # abs is a function to get absolute value
}
output "absolute_value_num2" {
    value =abs(var.num2)
}

output "ceiling_value_num2" {  # ceiling value of a number is the smallest integer greater than or equal to that number
    value = ceil(var.num2)     # ceil is a function to get ceiling value of a number
}

output "ceiling_value_num3" {
    value = ceil(var.num3)
}

output "floor_value_num5" {
    value = floor(var.num5)
}

variable "base" {
  description = "The base for logarithm calculation"
  type        = number
  default     = 10
}
output "log_value_num6" {
    value = log(var.num6[0], var.base)
}

















