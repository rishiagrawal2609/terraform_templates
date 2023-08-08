variable "name" { }

resource "null_resource" "script1" {
  provisioner "local-exec" {
    command = "Write-Host \"Hello ${var.name}\""

    interpreter = ["PowerShell", "-Command"]
  }
}
