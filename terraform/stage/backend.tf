terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "otus-devops-reddit-busket"
    region   = "ru-central1"
    key      = "stage/terraform.tfstate"
    access_key = "YCAJEnEEavrUVZK9X_fsoEE"
    secret_key = "YCMQ2pUZLuyKR01IP-wz6F7le66tfPqNB5i153"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
