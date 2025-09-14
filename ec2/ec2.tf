resource "aws_instance" "roboshop" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "learn-terraform"
  }
}
resource "aws_security_group" "allow_all_traffic_example" {
  name        = "allow_all_traffic_example"
  description = "Allow all traffic for example purposes"
  #vpc_id      = aws_vpc.main.id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_all_traffic"
  }
}