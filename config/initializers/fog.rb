CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJXVO3NQN7NFOV5HA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'for-dgu'                          # required
end