resource "grafana_dashboard" "dashboards" {
    provider = grafana.new_stack
    depends_on = [ grafana_cloud_stack.test ]

    for_each = fileset("${path.module}/assets/dashboards/", "**")

    folder = grafana_folder.dashboard_folder.uid
    config_json = file("${path.module}/assets/dashboards/${each.value}")
}