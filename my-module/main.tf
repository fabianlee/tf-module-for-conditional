resource "local_file" "myfile" {
  content  = "This was created by my-module with name=${var.name}"
  filename = "my-module-${var.name}.txt"
}

