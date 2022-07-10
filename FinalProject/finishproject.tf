provider "aws" {
  region     = "eu-central-1"
}


resource "aws_instance" "jenkinsServer" {
  ami           = "ami-0f64f746a3cb9a16e"
  instance_type = "t2.micro"
  key_name = "Test1_AWS"
  user_data = file("scriptDocker.sh")
  vpc_security_group_ids = [aws_security_group.my_jenkinsserver.id] 
  root_block_device {
    volume_size = 30
  }
  tags = {
    Name = "jenkinsServer"
  }
}

resource "aws_instance" "WebServer2" {
  ami           = "ami-0a1ee2fb28fe05df3"
  instance_type = "t2.micro"
  key_name = "Test1_AWS" 
  vpc_security_group_ids = [aws_security_group.my_webserver.id]
  user_data = file("scriptApach.sh")
  tags = {
    Name = "WebServer2"
  }
}

resource "aws_security_group" "my_webserver" {
  name = "WebServer Security Group"
  description = "My First SecurityGroup"

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
   }
}
resource "aws_security_group" "my_jenkinsserver" {
  name = "Jenkins Security Group"
  description = "My Second SecurityGroup"

  ingress {
    from_port = 8080
    to_port   = 8080
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
   }
}
