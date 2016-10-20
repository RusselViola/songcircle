require "refile/s3"

aws = {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: "s3-us-west-2.amazonaws.com",
  bucket: ENV['S3_BUCKET_NAME'],
}

if Rails.env.production?
  Refile.cache = Refile::S3.new(prefix: "cache", **aws)
  Refile.store = Refile::S3.new(prefix: "store", **aws)
  Refile.cdn_host = "http://s3.amazonaws.com/russelsoundbucket"
end
