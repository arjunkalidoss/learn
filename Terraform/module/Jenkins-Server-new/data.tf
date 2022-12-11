data aws_security_group application_server {
name = "${var.app_code}-${lower(var.env)}-app-sg"
}
