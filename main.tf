
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Download the Nginx Docker image
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

# Create a Docker container
resource "docker_container" "nginx_container" {
  name  = "terraform-nginx-task3"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8081
  }
}
