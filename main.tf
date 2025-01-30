resource "aws_ssm_parameter" "param" {
  count = length(var.param)
  name  = var.param[count.index].name
  type  = var.param[count.index].type
  value = var.param[count.index].value
}

variable "param" {
    default = [
        { name = "demo1", value = "demo1", type = "String" },
        { name = "demo2", value = "demo2", type = "String" }
    ]
}