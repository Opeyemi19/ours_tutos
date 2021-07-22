# Parameters of the db (mariadb)
resource "aws_db_parameter_group" "mariadb-parameters" {
  name        = "mariadb-params"
  family      = "mariadb10.1"
  description = "MariaDB parameter group"

  # Parameters example
  parameter {
    name  = "max_allowed_packet"
    value = 16777216
  }
}

# Db instance
resource "aws_db_instance" "mariadb" {
 
  parameter_group_name      = aws_db_parameter_group.mariadb-parameters.name

}