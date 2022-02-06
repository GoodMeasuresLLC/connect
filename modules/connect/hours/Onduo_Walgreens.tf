
resource "aws_connect_hours_of_operation" "Onduo_Walgreens" {
  instance_id  = var.connect_instance_id
  name         = "Onduo Walgreens"
   time_zone     = ""
  config {
    day = "MONDAY"

    end_time {
      hours   = 21
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
      hours   = 21
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "THURSDAY"

    end_time {
      hours   = 21
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "SATURDAY"

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
      hours   = 21
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
      hours   = 21
      minutes = 0
    }

    start_time {
      hours   = 8
      minutes = 0
    }
  }
  config {
    day = "SUNDAY"

    end_time {
      hours   = 13
      minutes = 0
    }

    start_time {
      hours   = 9
      minutes = 0
    }
  }
  tags = var.tags
}
