# frozen_string_literal: true

module Daisy
  module Forms
    ##
    # Daisy label
    class LabelComponent < ApplicationComponent
      ##
      # @param method [Symbol] the method name for which to create the label
      # @param object_name [Symbol] the object name for which to create the label
      # @param options [Hash] the label options
      # @param text [Symbol] the label text
      def initialize(method:, object_name:, alt: false, value: nil, options: {})
        super
        @method      = method
        @object_name = object_name
        @value       = value
        @options     = options
        @alt         = alt
      end

      private

      attr_reader :method, :object_name, :options, :value

      def content
        super || t(value) || t("#{object_name.to_s.pluralize}.#{method}")
      end

      def render?
        !alt || alt && value
      end

      def alt
        return nil unless @alt

        "-alt"
      end
    end
  end
end
