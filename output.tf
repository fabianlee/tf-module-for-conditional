# output from main module is output by default
output "root-filepath" {
  value = "root file located at: ${local_file.myfile.filename}"
}

#
# output from modules is not shown, requires explicit output declaration in root
#

# show all output from mymod1
output "mymod1-output-all" {
  value = module.mymod1
}
# show only single output from mymod1
output "mymod1-output-my-module-filepath" {
  value = module.mymod1.my-module-filepath
}
