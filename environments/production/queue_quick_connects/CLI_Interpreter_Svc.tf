resource "aws_connect_quick_connect" "cli_interpreter_svc" {
	instance_id  = var.connect_instance_id
	name         = "CLI (Interpreter Svc)"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18665489982"
        }
	}
	tags = var.tags
}
