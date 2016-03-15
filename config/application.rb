require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FlickrPhotoWidget
  class Application < Rails::Application
    
    # config.before_configuration do
    #   env_file = File.join(Rails.root, 'config', 'flickr.yml')
    #   YAML.load(File.open(env_file)).each do |key, value|
    #     ENV[key.to_s] = value
    #   end if File.exists?(env_file)
    # end
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.initialize_on_precompile = false
  end
end
