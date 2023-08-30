variable "variable_name" {                     #creating variable
  description = "Description of the variable."
  type        = string
  default     = "welcome"
}

locals {                                    # creating locals
  local_argument1 = "Hiiiiiii"              # passing the value
  local_argument2 = "This is Ravi Raj"
  local_argument3 = var.variable_name
}

resource "local_file" "file03" {
  filename = "Raaz.txt"                    #saving in Raaz.txt 
  # EOF define a multi-line string.
  content  = <<EOF
Local Argument 1: ${local.local_argument1}
Local Argument 2: ${local.local_argument2}
Local Argument 3: ${local.local_argument3}
EOF
}
