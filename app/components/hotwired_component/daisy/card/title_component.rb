# frozen_string_literal: true

module HotwiredComponent
  module Daisy
    module Card
      class TitleComponent < DaisyComponent
        def initialize(t:)
          super
          @text = t
        end

        private

        attr_reader :text
      end
    end
  end
end
