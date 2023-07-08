module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "QA servers"

  instance_type          = "t2.micro"
  key_name               = "ec2-kp-mk-qa"
  monitoring             = true
  vpc_security_group_ids = ["sg-4647173f"]
  subnet_id              = "subnet-19d4357e"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
