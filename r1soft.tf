resource "aws_instance" "centos"{
    ami = "${data.aws_ami.centos.id}"
    instance_type = "t2.micro"
    associate_public_ip_address = "true"
    vpc_security_group_ids = ["${aws_security_group.r1soft.id}"]
    key_name = "${aws_key_pair.class.key_name}"

    }

     output "PIP"{
         value = "${aws_instance.centos.public_ip}"
     }




    
