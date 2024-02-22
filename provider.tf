terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "2.6.1"
    }
  }
}

provider "grafana" {
    alias           = "cloud"
    cloud_api_key   = var.grafana_token
}

provider "grafana" {
    alias   = "new_stack"

    url     = grafana_cloud_stack.test.url
    auth    = grafana_cloud_stack_service_account_token.cloud_sa.key
}