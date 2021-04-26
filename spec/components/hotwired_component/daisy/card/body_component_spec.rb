# frozen_string_literal: true

require "rails_helper"

RSpec.describe Daisy::Card::BodyComponent, type: :view do
  subject do
    described_class.new
  end

  describe "render" do
    let(:title) { double(Daisy::Card::TitleComponent, render_in: "title") }

    it "should render the body" do
      expect(Daisy::Card::TitleComponent).to receive(:new)
        .with(t: "foo")
        .and_return(title)

      render(subject) do |b|
        b.title t: "foo"
        "this is the body"
      end

      expect(rendered).to have_css(
        ".card-body" \
        "[data-controller='card--body--component']"
      )

      expect(rendered).to have_text("this is the body")
      expect(rendered).to have_text("title")
    end
  end
end
