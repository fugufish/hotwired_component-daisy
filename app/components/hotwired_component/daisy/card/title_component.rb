# frozen_string_literal: true

module Daisy
  module Card
    class TitleComponent < ApplicationComponent
      def initialize(t:)
        super
        @text = t
      end

      private

      attr_reader :text
    end
  end
end
