resource "aws_connect_hours_of_operation" "basic_hours" {
  instance_id  = var.connect_instance_id
  name         = "Basic Hours"
  time_zone  = "America/New_York"
  config {
    day = "TUESDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "WEDNESDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "FRIDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "SATURDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "THURSDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "MONDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
  config {
    day = "SUNDAY"

    end_time {
      hours   = 0
      minutes = 0
    }

    start_time {
      hours   = 0
      minutes = 0
    }
  }
}
