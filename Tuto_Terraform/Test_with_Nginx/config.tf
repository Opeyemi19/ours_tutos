provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "mynginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx-server" {
  name = "nginx-server-1"
  image = docker_image.mynginx.latest
  ports {
    internal = 80
    external = 8081
  }
  volumes {
    container_path  = "/usr/share/nginx/html"
    host_path = "/tmp/tutorial/www"
    read_only = true
  }
}
