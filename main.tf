##!!!!! https://github.com/BasileTrujillo/terraform-elastic-beanstalk-nodejs/blob/master/eb-env/main.tf

### S3 ###
# Store State bucket #
resource "aws_s3_bucket" "affiliate_project_bucket_state" {
  bucket = "affiliated-project-bucket-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "${var.affiliate_tag}"
  }
}

###############################


# ### ELASTIC BEANSTALK ###
# # application #
# resource "aws_elastic_beanstalk_application" "affiliate_project" {
#   name        = "affiliate_project_app"
#   description = "This is the app for all affiliate project environments"
# }
#
# # ENV Test #
# resource "aws_elastic_beanstalk_environment" "affiliate_env_test" {
#   name                = "${var.eb_stack_env.["test"]}"
#   application         = "${aws_elastic_beanstalk_application.affiliate_project.name}"
#   solution_stack_name = "${var.eb_solution_stack}"
#
#   tags {
#     Name = "${var.affiliate_tag}"
#   }
# }
#
# # ENV Prod #
# resource "aws_elastic_beanstalk_environment" "affiliate_env_prod" {
#   name                = "${var.eb_stack_env.["prod"]}"
#   application         = "${aws_elastic_beanstalk_application.affiliate_project.name}"
#   solution_stack_name = "${var.eb_solution_stack}"
#
#   tags {
#     Name = "${var.affiliate_tag}"
#   }
#
# setting {
#    namespace = "aws:elasticbeanstalk:container:nodejs"
#    name      = "NodeCommand"
#    value     = "${var.node_cmd}"
#  }
#  setting {
#    namespace = "aws:elasticbeanstalk:container:nodejs"
#    name      = "NodeVersion"
#    value     = "${var.node_version}"
#  }
# }
#
# ### S3 ###
# # Standard Bucket Prod #
# resource "aws_s3_bucket" "affiliate_bucket_prod" {
#   bucket = "${var.s3_bucket_env.["prod"]}"
#   acl    = "private"
#
#   tags {
#     Name        = "${var.affiliate_tag}"
#     Environment = "Test"
#   }
# }
#
# # Standard Bucket Test #
# resource "aws_s3_bucket" "affiliate_bucket_test" {
#   bucket = "${var.s3_bucket_env.["test"]}"
#   acl    = "private"
#
#   tags {
#     Name        = "${var.affiliate_tag}"
#     Environment = "Prod"
#   }
# }

