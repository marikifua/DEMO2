provider "google" {
  credentials = "${file("~/credential/marikkey.json")}"
  #credentials = "./credential/marikkey.json"
  project = "quantum-tracker-251814"
  region  = "us-central1"
  zone    = "us-central1-f"
}
resource "google_compute_instance" "app-tf" {
	name         = "app-tf"
	machine_type = "n1-standard-1"


	boot_disk {
		initialize_params{
			size  = "10"
      type  = "pd-ssd"
      image = "centos-7-v20190905"
		}
	}

	network_interface {
		network = "default"
		access_config {
			
		}
	}
  metadata = { ssh-keys = "${var.ssh_user}:${file(var.ssh_pub_key ["${var.ssh_user}"])}" }
    
    tags = [ "http-server", "prod8081" ]
}
resource "google_compute_instance" "db-tf" {
	name         = "db-tf"
	machine_type = "n1-standard-1"


	boot_disk {
		initialize_params{
			size  = "10"
      type  = "pd-ssd"
      image = "centos-7-v20190905"
		}
	}

	network_interface {
		network = "default"
		access_config {
			
		}
	}
  metadata = { ssh-keys = "${var.ssh_user}:${file(var.ssh_pub_key ["${var.ssh_user}"])}" }
      tags = [ "http-server","mongo","elk" ]
}
