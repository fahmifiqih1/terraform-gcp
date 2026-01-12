variable "types_firewall" {
  type = list(string)
  default = [
    "allow-ssh",
    "allow-http",
    "allow-https",
    "allow-rdp"
  ]
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
}

variable "mechine_type" {
  description = "Machine Type"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "image_os" {
  description = "Image OS"
  type        = string
}

variable "os_size" {
  description = "OS Size"
  type        = number
}

variable "type_disk" {
  description = "Type Disk"
  type        = string
}

variable "labels_disk" {
  description = "Labels Disk"
  type        = map(string)
}

variable "architecture_disk" {
  description = "Architecture Disk"
  type        = string
}

variable "ssh_user" {
  description = "ssh_user"
  type        = string
}