provider "jenkins" {
  url = "http://localhost"
  username = "admin"
  password = "admin"
}

resource "jenkins_job_xml" "admin" {
  name = "test-job"
  xml = file("./job.xml")
}