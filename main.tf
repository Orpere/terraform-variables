resource "null_resource" "web" {

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo ${var.test}"
  }
}

