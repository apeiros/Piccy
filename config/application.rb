require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Piccy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.i18n.default_locale = :'de-CH'
    config.time_zone = 'Bern'
    config.filter_parameters += [:password]
    config.sass.preferred_syntax = :sass

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end
