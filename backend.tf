terraform {
  backend "remote" {
    organization = "Thingamajig540"

    workspaces {
      name = "terra_demo"
    }
  }
}
