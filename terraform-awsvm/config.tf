
provider "aws" {
 access_key = "${var.access_key}"
 secret_key = "${var.secret_key}"
 region     = "${var.region}"
}

resource "aws_ebs_volume" "myvol001" {
    availability_zone = "${var.availabilityZone}"
    size = 1
    tags = {
        Name = "HelloWorld"
    }
    
}
resource "aws_instance" "example" {
 ami           = "${var.ami}"
 instance_type = "m1.small"
 tags = {
   Name = "${var.stackName}"
 }
}
