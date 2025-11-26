terraform {
  backend "s3" {
    bucket         = "123pinco123"
    key            = "terraform/state.tfstate"
    region         = "ap-southeast-1"  # Change to your region
     use_lockfile   = true   # ✅ enables S3 native state locking
  }
}
