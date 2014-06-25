require File.expand_path('../config/application', __FILE__)

require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'sprockets-helpers'

use Rack::Session::Cookie, secret: ENV['RACK_SECRET']
use Rack::MethodOverride
use Rack::Reloader

Compass.configuration do |c|
  c.preferred_syntax = :scss
  c.http_path        = '/'
  c.relative_assets  = true
  c.line_comments    = true
  c.output_style     = :expanded
end

map '/assets' do
  e = Sprockets::Environment.new

  e.append_path File.join(File.expand_path('../', __FILE__), 'app', 'assets', 'css')
  e.append_path File.join(File.expand_path('../', __FILE__), 'app', 'assets', 'jsc')

  Sprockets::Helpers.configure do |c|
    c.environment = e
    c.prefix      = '/assets'
    c.digest      = false
  end

  run e
end

map '/' do
  run Base::Application.new
end
