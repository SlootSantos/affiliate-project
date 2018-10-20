region = "eu-west-1"

shared_credentials_file = "/User/floriansloot/.aws/credentials"

profile = "terraform"

affiliate_tag = "affiliate_project"

eb_solution_stack = "64bit Amazon Linux 2018.03 v4.5.4 running Node.js"

eb_stack_env = {
  prod = "prod-affiliate-project-env"
  test = "test-affiliate-project-env"
}

s3_bucket_env = {
  prod = "prod-affiliate-project-bucket"
  test = "test-affiliate-project-bucket"
}

s3_bucket_www = {
  prod = "affiliate.custom-commerce.de"
  test = "affiliate-test.custom-commerce.de"
}
