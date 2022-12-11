
resource "aws_instance" "app_server" {
  ami                    = "ami-0beaa649c482330f7"
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.application_server.id]
  count                  = 2
  subnet_id              = element(var.subnet_ids, count.index)
  availability_zone      = element(var.availability_zones, count.index)
  key_name               = "test"

  tags = {
    Name = element(var.ec2_instace_names, count.index)
  }
}
