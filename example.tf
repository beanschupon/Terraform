provider "aws" {
  access_key = "AKIAJUOFZUA7RT6742DQ"
  secret_key = "QW74wd08K9mtEKM56G1hfxp2itZ4AhV1P0LtIcLM"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-28e07e50"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.availability_zone}"
  subnet_id = "${var.subnet_id}"
}

resource "aws_key_pair" "server_access" {
  key_name = "Cdrw012018$$"
  public_key = ""
}
