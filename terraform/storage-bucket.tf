terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "otus-devops-reddit-busket"
    region   = "ru-central1"
    key      = "prod/terraform.tfstate"
    access_key = "YCAJEf6wHRgl1sTEcaFRiWe"
    secret_key = "YCN1QFyhubLKnsW5xirEk_358fTZ425tH4G9L4"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
