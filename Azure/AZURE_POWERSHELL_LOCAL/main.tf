resource "null_resource" "execute_powershell" {
  provisioner "local-exec" {
    command = <<-EOT
      $randomValue = Get-Random -Minimum 100 -Maximum 1000
      $randomValue | Out-File random_output.txt
    EOT
    interpreter = ["PowerShell", "-Command"]
    working_dir = path.module
  }
}

data "local_file" "random_output" {
  depends_on = [null_resource.execute_powershell]

  count    = 1
  filename = "${path.module}/random_output.txt"
}

output "random_value" {
  value = data.local_file.random_output[0].content
}
