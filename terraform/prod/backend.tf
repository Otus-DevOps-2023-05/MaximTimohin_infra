terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "otus-devops-reddit-busket"
    region   = "ru-central1"
    key      = "prod/terraform.tfstate"
    access_key = "YCAJEf6wHRgl1sTEcaFRiWS2b"
    secret_key = "YCN1QFyhubLKnsW5xirEk_358fTZ425tH4G9Lr9H"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
