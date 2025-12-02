resource "aws_instance" "mine" {
    for_each = var.in_type
    ami =var.ami_id
    instance_type = each.value
    key_name = "arunkeys"
    tags = {
        Name = "mineinstances_"
    }
   

  
}

variable "ami_id" {
  type = string
  default = "ami-02b8269d5e85954ef"
}

variable "in_type" {
  type = set(string)
  default = [ "t3.micro", "t3.small", "t3.micro"]
}
