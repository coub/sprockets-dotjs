module Sprockets
  module DotJS
    class Engine < ::Rails::Engine
      initializer "sprockets.dotjs", :group => :all do |app|
        ::Rails.application.config.assets.configure do |env|
          env.register_engine(".djs", ::Sprockets::DotJS::Compiler, silence_deprecation: true)
        end
      end
    end
  end
end
