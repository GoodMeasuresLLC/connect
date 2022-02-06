
resource "aws_connect_hours_of_operation" "AHEAD_Study" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "AHEAD Study"
  description  = ""
  time_zone     = ""
  config {
    day = "THURSDAY"

    end_time {
      hours   = 20
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "FRIDAY"

    end_time {
      hours   = 20
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "WEDNESDAY"

    end_time {
      hours   = 20
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "TUESDAY"

    end_time {
      hours   = 20
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "MONDAY"

    end_time {
      hours   = 20
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  tags = local.tags
}
