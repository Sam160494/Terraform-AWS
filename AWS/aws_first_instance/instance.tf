#creating key_pair

/*resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCzxX+CrRETYR7Y6RqLuF1ZQ8v7qmh9amUqdI1QFLfiWvylmsN+lnrkBqFt6CD7Ysbfsh8Ld9sy2ONSmUUZZcy6dYCjhRqyAp3ocjuBmSBnLWaGOd6kNdeWOJjtiC+5hPNsqbL5nCAcou5bTgQ8Q++Cf0MU6hFtyEI+Ykt3mAHe93X+R1TInzeTDQ+6QEDmR5HkOnUUEExwYobs/rGlBswo5hrW55WagUc+gJj0ptZHzK8MZEApqzomQIOuP0MOhuIepm0+bLEX3pYesOiFuV59zsvSkcxX7QrxYs/Dek5K4n2Tz6o0jNGpzNz2YpZALAzl38FggFo8C4hqpV1r7w2RF0ZGJpt6OGcakUwRkY3BdLtlB8TeTZINvnH9Nf0qe06wa7WQ34b2KNNTW3DRZAk6sKu2OZoEsHHc6mzfPTUdpp/rQUd8modY/7I8QqwDPGu9m1ewMViNEe6dqn7V7H4oC7C37T+LqSNrP75RpWFmXsalWXhQf0Sx8/IqUQRjKt56PBmBO2bg5yRRofqRtfzxGpRyxKdhZHWDnw+1o3xaBC1vX/f8QLaMar5cV6gmpJKmC89uHkKKFUCFd2MJUtlpmiZjXLCCWuFkYcv4XG7EnsZMSiMlKe0P3ULZfIoldYefRUwmLvZsjTO8beODCdAHJgkAImfzz9c7YKEGS0yn0Q== samra.k@hcl.com"
}*/

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  
 dynamic "setting" {
    for_each = var.ports
    iterator = port
    content {
     description      = "TLS from VPC"
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
    }

 }
}
  /*ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

   ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

}*/
/*resource "aws_instance" "web" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
*/

# Access Key : AKIARRTG5Y3P6FHIB2R2
# Secret Key : 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*/