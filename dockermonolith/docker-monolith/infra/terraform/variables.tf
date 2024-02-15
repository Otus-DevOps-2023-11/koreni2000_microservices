variable "cloud_id" {
  type        = string
  description = "Cloud"
}
variable "folder_id" {
  type        = string
  description = "Folder"
}
variable "zone" {
  type        = string
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  type        = string
  description = "Path to the public key used for ssh access"
}
variable "image_id" {
  type        = string
  description = "Disk image"
}
variable "subnet_id" {
  type        = string
  description = "Subnet"
}
variable "service_account_key_file" {
  type        = string
  description = "key.json"
}
variable "token" {
  type        = string
  description = "Token for ya cloud"
}
variable "private_key_path" {
  type        = string
  description = "Path to the private key file"
}
