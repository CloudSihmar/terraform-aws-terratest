provider "aws" {
  region  = var.region
  
}

resource "aws_instance" "terraform-cloud-vm" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet.id
  associate_public_ip_address = true
  count                  = 1
  user_data              = file("install.sh")         
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    "Name" = "terraform-cloud-vm-${count.index}"
  }
}
