package s3policy

deny[msg] if {
  some r in input.planned_values.root_module.resources
  r.type == "aws_s3_bucket"
  r.values.acl == "public-read"
  msg := sprintf("S3 bucket '%s' must not have public-read ACL", [r.name])
}
