locals {
  # list of mod names
  mod_list = {
    "a" = { name = "filea" }
    "b" = { name = "fileb" }
    "c" = { name = "filec" }
  }
}

resource "local_file" "myfile" {
  content  = "This is root!"
  filename = "root.txt"
}

module "mymod1" {
  source = "./my-module"

  # variables
  name = "mymod1"
}

# include module based on boolean variable using 'count'
module "mymod2" {
  source = "./my-module"

  # whether to include this module (default=false)
  count = var.include_mymod2 ? 1 : 0
 
  # variables
  name = "mymod2"
}

# include module based on attribute from list of objects
module "mymodlist" {
  source = "./my-module"

  # entire list
  #for_each = local.mod_list

  #  filter list based on object attribute
  for_each = { for k,v in local.mod_list : k => v if v.name!="filec" }
 
  # variables
  name = "mymod${each.key}"
}

