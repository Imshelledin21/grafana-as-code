resource "grafana_folder" "dashboard_folder" {
    provider = grafana.new_stack
    depends_on = [ grafana_cloud_stack.test ]

    title = "Test Folder"
}