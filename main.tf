provider "random" {
}
resource "local_file" "demo" {
  filename = "/root/demo"
  content  = "this is my first terraform file with updation"

  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "petname" {
  length    = 6
  separator = "_"
}

output "random_pet_name" {
  value = random_pet.petname.id
  
}

