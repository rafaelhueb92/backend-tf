resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = true  
  }
}

resource "aws_ssm_parameter" "s3_bucket_name" {
  name  = "/${bucket_name}/name"
  type  = "String"
  value = aws_s3_bucket.this.id
}

resource "aws_ssm_parameter" "s3_bucket_arn" {
  name  = "/${bucket_name}/arn"
  type  = "String"
  value = aws_s3_bucket.this.arn
}
