
resource "aws_connect_hours_of_operation" "Good_Measures_Corporate" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Good Measures Corporate"
  description  = ""
  time_zone     = ""
  config {
    day = "TUESDAY"

    end_time {
      hours   = 17
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  config {
    day = "MONDAY"

    end_time {
      hours   = 17
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  config {
    day = "WEDNESDAY"

    end_time {
      hours   = 17
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  config {
    day = "THURSDAY"

    end_time {
      hours   = 17
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  config {
    day = "FRIDAY"

    end_time {
      hours   = 17
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  tags = local.tags
}
