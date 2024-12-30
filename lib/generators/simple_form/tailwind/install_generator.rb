# frozen_string_literal: true

require 'rails/generators'

module SimpleForm
  module Tailwind
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Generate a SimpleForm config for tailwind based forms'
      source_root File.expand_path('templates', __dir__)

      def update_tailwind_config
        # Open the tailwind.config.js file
        config_path = Rails.root.join('config/tailwind.config.js')
        if File.exist?(config_path)
          # Read the existing file
          config = File.read(config_path)
          # Add the line in the content section if it's not already there
          if config.include?('./config/initializers')
            say "tailwind.config.js already includes the necessary configuration.", :green
          else
            config.sub!('content: [', "content: [\n    \"./config/initializers/*.rb\",")
            # save modifications
            File.write(config_path, config)
            say "tailwind.config.js has been updated with the necessary configuration.", :green
          end
        else
          say "tailwind.config.js not found.", :red
          say "Please ensure Tailwind is properly installed and try again.", :yellow
          exit # Cancel installation
        end
      end

      def copy_initialzier
        copy_file('simple_form.rb', 'config/initializers/simple_form_tailwind.rb', force: true)
      end
    end
  end
end
