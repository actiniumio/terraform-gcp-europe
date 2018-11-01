resource "google_compute_instance" "actiniumio-test-allspark" {
  count = "${var.vmcount}"
  name = "${var.instance-name}-${count.index + 1}"
  machine_type = "${var.vm_type}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-secure-forward",
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
      size = "20"
    }
  }

  metadata {
    hostname = "${var.instance-name}-${count.index + 1}"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.allspark_network_subnetwork.name}"

    access_config {
      // Ephemeral IP
    }
  }
  timeouts {
  create = "60m"
  }
}
