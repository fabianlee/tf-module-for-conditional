output "my-module-filepath" {
  value = "my-module file located at: ${local_file.myfile.filename}"
}
output "my-module-static-str" {
  value = "again"
}
