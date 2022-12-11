resource "aws_security_group" "application_server"{
name = "${var.app_code}-${lower(var.env)}-app-sg"
description = "SG group for Jenkins server"


//ingress {
//description = "RDP Access"
//protocol = "TCP"
//from_port = 3389
//to_port = 3389
//cidr_blocks = [var.internet_access]
//}

ingress {
description = "RDP Access"
protocol = "TCP"
from_port = 22
to_port = 22
cidr_blocks = [var.internet_access]
}

ingress {
description = "RDP Access"
protocol = "TCP"
from_port = 443
to_port = 443
cidr_blocks = [var.internet_access]
}

ingress {
description = "RDP Access"
protocol = "TCP"
from_port = 8080
to_port = 8080
cidr_blocks = [var.internet_access]
}

}
