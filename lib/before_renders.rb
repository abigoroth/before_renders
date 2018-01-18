require "before_renders/version"

require 'action_controller'
require 'rails/railtie'

# raise 'test'
module ActionController
  autoload :BeforeRender, 'action_controller/before_render'
end

ActiveSupport.on_load(:action_controller) do
  include ActionController::BeforeRender
end