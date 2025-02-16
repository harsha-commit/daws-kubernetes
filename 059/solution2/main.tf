module "k8s" {
  source = "terraform-aws-modules/ec2-instance/aws"
  name   = "k8s-workstation"
  ami    = "ami-09c813fb71547fc4f"

  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-08ab8575176da550c"]
  subnet_id              = "subnet-0f87134601ecece2c"
  user_data              = file("k8s.sh")

  root_block_device = [
    {
      volume_type = "gp3"
      volume_size = 50
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "k8s-workstation"
  }
}
