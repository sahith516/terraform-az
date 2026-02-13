variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Virtual Machine Name"
  type        = string
}

variable "admin_username" {
  description = "Admin username"
  type        = string
}

variable "admin_password" {
  description = "Admin password"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "VM size"
  type        = string
}
