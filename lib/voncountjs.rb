require "voncountjs/version"
require "voncountjs/railtie" if defined?(Rails)

module Voncountjs
  class Engine < ::Rails::Engine
  end
end
