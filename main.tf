resource "google_compute_instance" "myvm01" {
  name                      = "myvm01"
  machine_type              = "n1-standard-1"
  hostname                  = "myvm01.com"
  zone                      = "us-central1-a"
  allow_stopping_for_update = true


  labels = {
    name  = "myvm01"
    owner = "fear"
  }

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = "default"

    access_config {
    }
  }

  metadata_startup_script = "echo 'hi' > /text.txt"


  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]

  }
}
