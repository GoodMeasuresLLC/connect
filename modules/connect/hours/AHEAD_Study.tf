resource "aws_connect_hours_of_operation" "ahead_study" {
  instance_id  = var.connect_instance_id
  name         = "AHEAD Study"
  time_zone  = "America/New_York"
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
  tags = var.tags
}
