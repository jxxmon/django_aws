resource "aws_instance" "app" {
  ami           = "ami-0c9c942bd7bf113a2" # Ubuntu 22.04 LTS, 실제 운영시 최신 AMI로 교체
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_a.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  key_name = "Service-key" # 실제 키페어 이름으로 변경

  tags = {
    Name = "Service-cloud-approval-saas"
  }
} 