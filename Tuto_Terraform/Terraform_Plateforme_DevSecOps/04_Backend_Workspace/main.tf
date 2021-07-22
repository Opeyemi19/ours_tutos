provider "aws" {
    region = var.AWS_REGION
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
}


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_key_pair" "my_ec2" {
    # key_name   = "terraform-key"
    key_name   = "${terraform.workspace == "prod" ? "terraform-key-prod-ec2" : "terraform-key-default-ec2"}"
    public_key = file("../home/vagrant/terrafform.pub")
}


resource "aws_security_group" "instance_sg" {
    # name = "terraform-test-sg"
    name = "${terraform.workspace == "prod" ? "terraform-test-sg-prod-ec2" : "terraform-test-sg-default-ec2"}"


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }


}



resource "aws_instance" "web" {
    key_name      = aws_key_pair.my_ec2.key_name
    ami           = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.instance_sg.id]

    connection {
        type        = "ssh"
        user        = "ubuntu"
        private_key = file("../home/vagrant/terrafform")
        host        = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [
          "sudo apt-get -f -y update",
          "sudo apt-get install -f -y apache2",
          "sudo systemctl start apache2",
          "sudo systemctl enable apache2",
          "sudo sh -c 'echo \"<h1>Hello devopssec</h1>\" > /var/www/html/index.html'",
        ]
    }

    # provisioner "local-exec" {
    #     when    = "destroy"
    #     command = "echo 'destruction de l'instance ${self.public_ip}' > ip_address.txt"
    # }

    tags = {
        # Name = "Terraform-Ope"
        Name = "${terraform.workspace == "prod" ? "prod-ec2" : "default-ec2"}"
    }
}


terraform {
  backend "s3" {
    bucket = "terafform-devops"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}


output "public_ip" {
    value = aws_instance.web.public_ip
}