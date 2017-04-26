require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Challenge500px
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # This loads the api keys stored in 'config/five_hundred_secret.yml' so they can be accessed
    # through out the platform.
    file_path = File.join(Rails.root, 'config', 'five_hundred_secret.yml')
    YAML.load(File.open(file_path)).each do |key, value|
      ENV[key.to_s] = value
    end if File.exists?(file_path)

  end
end
