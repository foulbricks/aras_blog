CarrierWave.configure do |config|

  config.fog_credentials = {
    
    # Configuration for Amazon S3
    :provider              => 'AWS',
    :aws_access_key_id     => ENV["S3_ACCESS_KEY"],
    :aws_secret_access_key => ENV["S3_SECRET_KEY"],
    :region                => "us-east-1"
  }
 
  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
 
  config.fog_directory    = ENV['S3_BUCKET_NAME']
end