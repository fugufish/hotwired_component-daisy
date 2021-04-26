# frozen_string_literal: true

module HotwiredComponent
  module Daisy
    module Card
      class BodyComponent < ApplicationComponent
        renders_one :title, TitleComponent
      end
    end
  end
end
