resource "azurerm_resource_group" "RG1" {
    name = "${var.RGname}"
    location = "${var.location}"
    tags = {
      "source" = "terraform"
    }
}

resource "azuread_user" "trainee" {
  user_principal_name = "${var.traineeUserPrincipal}"
  display_name        = "${var.traineeDisplayName}"
}

resource "azuread_user" "trainer" {
  user_principal_name = "${var.trainerUserPrincipal}"
  display_name        = "${var.traineeDisplayName}"
  force_password_change = true
}

resource "aws_s3_bucket" "p1" {
    bucket = "${var.s3BucketName}-${count.index}"
    count = var.numberOfBuckets 
}

resource "aws_iam_user" "created_users" {
    for_each = toset(var.users)
    name = each.value
}

resource "azurerm_storage_account" "storage-acc" {
    name = "${var.storageAccountName}"
    resource_group_name = azurerm_resource_group.RG1.name
    location = azurerm_resource_group.RG1.location
    account_tier = "Standard"
    account_replication_type = "GRS"

    tags = {
      "enviroment" = "staging"
    }
}

resource "azurerm_virtual_machine" "main" {
  name                  = "vm-01"
  location              = azurerm_resource_group.RG01.location
  resource_group_name   = azurerm_resource_group.RG01.name
  network_interface_ids = []
  vm_size               = "Standard_DS1_v2"


  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging",
    source = "terraform"
  }
}