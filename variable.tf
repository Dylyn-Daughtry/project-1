variable "users" {
    default = ["Dylyn", "Cody", "Mireille", "Huang"]
}

variable "location" {
    default = "East US"
}

variable "RGname" {
    default = "RG1"
}

variable "traineeUserPrincipal" {
    default = "gregorydaughtry@examplecorp.com"
}

variable "traineeDisplayName" {
    default = "Dylyn Daughtry"
}

variable "trainerUserPrincipal" {
    default = "ibrahimozbekler@examplecorp.com"
}

variable "trainerDisplayName" {
    default = "Ibrahim Ozbekler"
}

variable "storageAccountName" {
    default = "storage-acc"
}

variable "storageAccountTier" {
    default = "Standard"
}

variable "storageAccountReplicationType" {
    default = "GRS"
}

variable "s3BucketName" {
    default = "bucket32xc56f7jh"
    
}

variable "numberOfBuckets" {
    default = 2
}

variable "vmName" {
    default = "vm-01"
}

variable "vmSize" {
    default = "Standard_DS1_v2"
}

variable "vm_osProfile_computerName" {
    default = "hostname"
}

variable "vm_osProfile_adminUsername" {
    default = "testadmin"
}

variable "vm_osProfile_adminPassword" {
    default = "Password1234$
}