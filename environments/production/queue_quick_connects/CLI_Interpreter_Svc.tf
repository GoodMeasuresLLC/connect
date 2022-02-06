resource "aws_connect_quick_connect" "CLI_Interpreter_Svc" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "CLI (Interpreter Svc)"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18665489982"
        }
	}
	tags = local.tags
}
