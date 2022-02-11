output "queues_map" {
  value = {
    "basicqueue" = aws_connect_queue.basicqueue.queue_id
  }
}
