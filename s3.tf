resource "aws_s3_bucket" "my_bucket" {
  bucket = "s3_dinesh_26"


}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "s3_dinesh_26"
  key    = "vpc.tf"
  source = "${path.module}/vpc.tf"
  etag   = "${filemd5("${path.module}/vpc.tf")}"
}

