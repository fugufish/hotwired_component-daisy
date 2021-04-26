# frozen_string_literal: true

module HotwiredComponent
  module Daisy
    module Forms
      class SubmitButtonComponent < DaisyComponent
        def initialize(value:, options: {})
          super
          @value   = value
          @options = options
        end

        private

        attr_reader :value

        def options
          @options = value if @value.is_a? Hash

          @options.merge(class: css_class(@options))
        end

        def css_class(options)
          ["btn", options[:class]].join(" ").strip
        end
      end
    end
  end
end
