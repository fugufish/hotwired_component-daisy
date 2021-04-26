# frozen_string_literal: true

module HotwiredComponent
  module Daisy
    class CardComponent < DaisyComponent
      renders_one :body, Card::BodyComrsponent

      def initialize(classes: nil)
        super
        @classes = classes
      end

      private

      attr_reader :classes
    end
  end
end
