ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  OmniAuth.config.test_mode = true
  omniauth_hash = {
    "provider" => "500px",
    "uid" => 1234,
    "credentials" => {
      "token" => "token123",
      "secret" => "token_secret123"
    }
  }

  OmniAuth.config.add_mock("500px", omniauth_hash)
  # Add more helper methods to be used by all tests here...
end
