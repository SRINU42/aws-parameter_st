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
        { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.erobo.online:8080/", type = "String" },
        { name = "roboshop.dev.cart.redis_host", value = "redis-dev.erobo.online", type = "String" },
        { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.erobo.online", type = "String" },
        { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
        { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
        { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-{{env}}.erobo.online:27017/catalogue", type = "String" },
        { name = "roboshop.dev.payment.cart_host", value = "cart-{{env}}.erobo.online", type = "String" },
        { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
        { name = "roboshop.dev.payment.user_host", value = "user-{{env}}.erobo.online", type = "String" },
        { name = "roboshop.dev.payment.user_post", value = "8080", type = "String" },
        { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-{{env}}.erobo.online", type = "String" },
        { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
        { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-{{env}}.erobo.online:8080", type = "String" },
        { name = "roboshop.dev.shipping.db_host", value = "mysql-{{env}}.erobo.onlinep", type = "String" },
        { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
        { name = "roboshop.dev.user.redis_host", value = "redis-{{env}}.erobo.online", type = "String" },
        { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-{{env}}.erobo.online:27017/users", type = "String" },


        { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },


        
    ]
}