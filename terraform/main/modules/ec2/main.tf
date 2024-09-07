resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name        = var.key_name
  subnet_id       = var.public_subnet_id
  security_groups = [var.security_group_id]

  # Configuração para tornar a instância acessível através do Elastic IP
  associate_public_ip_address = true

  tags = {
    Name = "WebServerLaskaWebDe"
  }

  user_data = <<-EOF
              #!/bin/bash
                yum update update -y
                yum update install nginx -y
                systemctl start nginx
                systemctl enable nginx
                echo "<h1>LaskaWeb - DE</h1>" > /var/www/html/index.html
                EOF
}

resource "aws_key_pair" "my_key" {
  key_name   = var.key_name
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD0ZI7jP0/3BB2F0UDsIBNNifQMAi162Kq1OJe2rY+OhKWSyTcPBO8BOQ5DrxSMat26yT20y8MMdens0x/MwK5EI7gcwfuHgLyqVESWiWI6g2AjE+Y6VbNK89faWMiLf/F4Y66zDARLx/0EvhR//xZFdWzHYy70DGzK/2bm+TPA85+NK9vN9tMb/9N4NlQ70VDwsRBgo3g+hWYz07RoSGN8UfjqK8+rhCCh9x5fFhriS22l6Y5WJEGjx3ZttD7ZxwNtNpwQJ63serRYq83IYJEg+/Th0R8IUMAMvRXRFzUkdHX3Hl10zeynJA9FIPVjnLsnUYwZ2XCj9NLl4J41eXicqmMoJ+n+C+zsgQvFuOGozUNBIHh+Cs9jwWcouxNwhjgR0XCAfSiwGVEnbtXqj70XtUeWrcTruN9nxfLc0v1GawT32fpO52DL9o+y6Q5DuOU8Pd37R/0U2skfym9gRP+849kRClRABtgLU3R4vamSBxwxkafALY6hBoY10jppyis= jluizls1994@gmail.com"
}

