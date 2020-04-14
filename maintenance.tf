resource "mongodbatlas_maintenance_window" "my_project" {
    project_id  = "<your-project-id>"
    day_of_week = 5
    hour_of_day = 2
}
