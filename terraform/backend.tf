terraform {
  backend "remote" {
    organization = "data-conductors"

    workspaces {
      name = "tfx-goof"
    }
  }
}
