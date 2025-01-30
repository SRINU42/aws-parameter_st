resource "aws_ssm_parameter" "param" {
  count = length(var.param)
  name  = var.param[count.index].name
  type  = var.param[count.index].type
  value = var.param[count.index].value
}

variable "param" {
    default = [
        { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.erobo.online:8080/", type = "String" },
        { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.erobo.online:8080/", type = "String" },
        { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.erobo.online:8080/", type = "String" },
        { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.erobo.online:8080/", type = "String" },
        { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.erobo.online:8080/", type = "String" }

        
    ]
}