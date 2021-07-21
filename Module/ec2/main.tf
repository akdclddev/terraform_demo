resource "aws_instance" "web" {
#      count = length(local.azs)
//  count = 2
  for_each = toset(var.azs)
  ami           = var.ami
  instance_type = "t2.micro"
//  availability_zone = each.value
  availability_zone = local.azs[count.index]
  

    tags = {
//        Name =format("${local.name}-${each.value}")
      Name =format("${local.name}-${count.index + 1}")
  }
}
