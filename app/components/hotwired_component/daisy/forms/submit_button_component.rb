# frozen_string_literal: true

module Daisy
  module Forms
    class SubmitButtonComponent < ApplicationComponent
      def initialize(value:, options: {})
        super
        @value   = value
        @options = options
      end

      private

      def value
        return t("forms.submit") if @value.is_a? Hash

        t(@value)
      end

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
