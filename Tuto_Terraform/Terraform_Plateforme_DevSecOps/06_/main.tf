
module "my_alb_asg" {
    source               = "./modules/alb_asg"

    path_to_public_key   = "../home/vagrant/terrafform.pub"

    user_data = <<-EOF
      #!/bin/bash
      sudo apt-get update -y
      sudo apt-get install -y apache2 awscli mysql-client php php-mysql
      sudo systemctl start apache2
      sudo systemctl enable apache2
      sudo rm -f /var/www/html/index.html
      sudo aws s3 sync  s3://${var.bucket_name}/ /var/www/html/
      mysql -h ${module.my_rds.host} -u ${module.my_rds.username} -p${var.db_password} < /var/www/html/articles.sql
      sudo sed -i 's/##DB_HOST##/${module.my_rds.host}/' /var/www/html/db-config.php
      sudo sed -i 's/##DB_USER##/${module.my_rds.username}/' /var/www/html/db-config.php
      sudo sed -i 's/##DB_PASSWORD##/${var.db_password}/' /var/www/html/db-config.php
    EOF  
}