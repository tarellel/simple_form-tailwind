# frozen_string_literal: true

require 'rails/generators'

module SimpleForm
  module Tailwind
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Generate a SimpleForm config for tailwind based forms'
      source_root File.expand_path('templates', __dir__)

      def check_tailwind_installation
        # Check if tailwindcss-rails is installed
        unless File.exist?(Rails.root.join('app/assets/stylesheets/application.css'))
          say 'Tailwind CSS is not properly installed.', :red
          say 'Please install Tailwind CSS with the following commands:', :yellow
          say '  ./bin/bundle add tailwindcss-ruby', :yellow
          say '  ./bin/bundle add tailwindcss-rails', :yellow
          say '  ./bin/rails tailwindcss:install', :yellow
          exit # Cancel installation
        end
        
        say 'Tailwind CSS is properly installed.', :green
      end

      def copy_initialzier
        copy_file('simple_form.rb', 'config/initializers/simple_form_tailwind.rb', force: true)
      end
    end
  end
end
