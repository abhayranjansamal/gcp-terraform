provider "google" {
  credentials = file("cred.json")
  project     = "cicd-328806"
  region      = "us-central1"
}
