require File.expand_path('../boot', __FILE__)

require 'lotus'
require 'lotus/model'

module Base
  class Application < Lotus::Application
    configure do
      layout :application
      routes 'config/routes'

      load_paths << 'app'

      controller_pattern "%{controller}Controller::%{action}"
      view_pattern       "%{controller}::%{action}"
    end
  end
end
