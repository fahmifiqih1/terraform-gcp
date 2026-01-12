module "network" {
  source   = "../../modules/network"
  vpc_name = "myproject"
}

module "compute" {
  source            = "../../modules/compute"
  instance_name     = "vm-terraform"
  mechine_type      = "e2-medium"
  region            = "asia-southeast2-a"
  image_os          = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
  os_size           = 10
  type_disk         = "pd-standard"
  ssh_user          = "fahmi"
  labels_disk       = { "owner" = "devops", "environment" = "develop" }
  architecture_disk = "X86_64"
  vpc_name          = "myproject"
  types_firewall    = ["http-server", "https-server", "ssh-server"]
}


module "firewall" {
  source              = "../../modules/firewall"
  vpc_name            = module.network.vpc_name_output
  source_ranges_ssh   = ["0.0.0.0/0"] # This can use file for simple structure
  source_ranges_http  = ["0.0.0.0/0"]
  source_ranges_https = ["0.0.0.0/0"]
  types_firewall      = ["http-server", "https-server", "ssh-server"]
}