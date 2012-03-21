require 'spec_helper'
require 'capybara/rspec'

OmniAuth.config.test_mode = true

RSpec.configure do |config|
  config.before(:each) do
    OmniAuth.config.mock_auth[:github] = {
      'provider' => 'github',
      'uid' => '1763',
      'info' => {
        'nickname' => 'nashby',
        'email' => 'foo@bar.com',
        'name' => 'Foo Bar'
      },
      'credentials' => {
        'token' => 't0k3n'
      },
      'extra' => {
        'raw_info' => {
          'login' => 'nashby'
        }
      }
    }
  end
end
