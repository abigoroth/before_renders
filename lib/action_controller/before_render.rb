 module ActionController
   module BeforeRender
      extend ActiveSupport::Concern

      included do
          define_callbacks :render
      end

      def render(*args)
        run_callbacks :render do
          super
        end
      end

      class_methods do
        def before_render(*names, &block)
          _insert_callbacks(names, block) do |name, options|
              # Rails.logger.debug "name #{name}"
              set_callback :render, :before, name, options
          end
        end
      end
  end
end