resource "grafana_cloud_stack" "test" {
    provider            = grafana.cloud

    name                = "ascodetest"
    slug                = "ascodetest"
    region_slug         = "us"
    description         = "Test Grafana Cloud Stack"
    wait_for_readiness  = true
}