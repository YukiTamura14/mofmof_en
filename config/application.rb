require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    config.generators do |g|
      g.routes false
      g.assets false
      g.helper false
      g.jbuilder false
      g.template_engine :erb
      g.test_framework :rspec
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
  end
end
