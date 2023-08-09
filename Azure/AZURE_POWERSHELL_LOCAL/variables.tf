variable "rg_name" {
  default = "example-resource-group"
}

variable "user_data_config" {

  type = string

  description = "User data to be provided. e.g. echo 'user data'\necho 'Demo'"

  default = "#!/bin/bash\nsnap install amazon-ssm-agent --classic\nsnap start amazon-ssm-agent\napt update -y\napt install nginx -y\nufw allow 'Nginx HTTP'\nsystemctl enable nginx\napt install unzip -y\ncurl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip'\nunzip awscliv2.zip\n./aws/install\naws s3 cp s3://kcns-imioffering-us-east-2-ssm-patch-artifacts/index.html /var/www/html/index.nginx-debian.html\nsystemctl restart nginx >/dev/null 2>&1"

}