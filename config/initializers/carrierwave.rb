# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIAWLMPJBB46RXLNW4H"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["flixterbucketjp"]              # required
end