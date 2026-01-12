variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "types_firewall" {
  description = "List of firewall types"
  type        = list(string) 
}

variable "source_ranges_ssh" {
  description = "List of firewall ports"
  type        = list(string) 
}

variable "source_ranges_http" {
  description = "List of firewall ports"
  type        = list(string) 
}

variable "source_ranges_https" {
  description = "List of firewall ports"
  type        = list(string) 
}