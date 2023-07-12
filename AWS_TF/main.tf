resource "aws_instance" "nath_vm" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.micro"

  tags = {
    Name = "My Test EC2 Instance"
  }
}