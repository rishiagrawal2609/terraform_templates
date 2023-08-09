resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = "East US"
}

resource "null_resource" "execute_powershell" {
  provisioner "local-exec" {
    command = <<-EOT
      $randomValue = Get-Random -Minimum 100 -Maximum 1000
      $randomValue | Out-File random_output.txt
    EOT
    interpreter = ["/usr/bin/pwsh", "-Command"]
    working_dir = path.module
  }
  depends_on = [
    azurerm_resource_group.example,
  ]

}

data "local_file" "random_output" {
  depends_on = [null_resource.execute_powershell]

  count    = 1
  filename = "${path.module}/random_output.txt"
}

output "random_value" {
  value = data.local_file.random_output[0].content
}

output "varprint" {
  value = var.user_data_config
}

output "dirprint" {
  value = "#!/bin/bash\nsnap install amazon-ssm-agent --classic\nsnap start amazon-ssm-agent\napt update -y\napt install nginx -y\nufw allow 'Nginx HTTP'\nsystemctl enable nginx\napt install unzip -y\ncurl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip'\nunzip awscliv2.zip\n./aws/install\naws s3 cp s3://kcns-imioffering-us-east-2-ssm-patch-artifacts/index.html /var/www/html/index.nginx-debian.html\nsystemctl restart nginx >/dev/null 2>&1"
}