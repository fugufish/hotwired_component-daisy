# frozen_string_literal: true

class HotwiredComponent::Daisy::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def install_tailwind
    rake "tailwindcss:install"
  end

  def add_daisy
    run "yarn add daisyui"
  end
end
