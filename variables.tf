variable "region" {
  description = "This is the default region for the entire infrastructure"
}

variable "shared_credentials_file" {
  description = "This is where the credentials for terraform are stored"
}

variable "profile" {
  description = "This is the actual profile name to be access AWS with"
}

variable "affiliate_tag" {
  description = "This is the tag to identify resources on AWS"
}

variable "eb_solution_stack" {
  description = "This is the Stack that is supposed to be installed on the Beanstalk application"
}

variable "eb_stack_env" {
  type = "map"

  default = {
    prod = {
      description = "This is the production Environment"
    }

    test = {
      description = "This is the test Environment"
    }
  }
}

variable "s3_bucket_env" {
  type = "map"

  default = {
    prod = {
      description = "This is the production Bucket"
    }

    test = {
      description = "This is the test Bucket"
    }
  }
}
