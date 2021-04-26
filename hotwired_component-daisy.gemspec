# frozen_string_literal: true

require_relative "lib/hotwired_component/daisy/version"

Gem::Specification.new do |spec|
  spec.name        = "hotwired_component-daisy"
  spec.version     = HotwiredComponent::Daisy::VERSION
  spec.authors     = ["fugufish"]
  spec.email       = ["therealfugu@gmail.com"]
  spec.homepage    = "https://github.com/fugufish/hotwired_component-daisy"
  spec.summary     = "DaisyUI hotwired_component helpers"
  spec.description = "DaisyUI hotwired_component helpers"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile",
    "README.md"]

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.1"
  spec.add_dependency "hotwired_component", "~> 0.1"
  spec.add_dependency "tailwindcss-rails"
end
