output "internal_ip" {
  value = google_compute_instance.myvm01.network_interface.0.network_ip
}

output "external_IP" {
  value = google_compute_instance.myvm01.network_interface.0.access_config.0.nat_ip
}
