provider "google" {
  credentials = "${file("~/credential/marikkey.json")}"
  #credentials = "./credential/marikkey.json"
  project = "quantum-tracker-251814"
  region  = "europe-west3"
  zone    = "europe-west3-c"
}
resource "google_compute_instance" "carts-tf" {
	name         = "carts-tf"
	machine_type = "g1-small"


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
    
    tags = [ "carts-tf" ]
}
resource "google_compute_instance" "mongodb-tf" {
	name         = "mongodb-tf"
	machine_type = "g1-small"


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
      tags = [ "mongodb-tf" ]
}
