resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count   = 4
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
  allow_overwrite = true
}