# frozen_string_literal: true

require 'rails/generators'

module SimpleForm
  module Tailwind
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Generate a SimpleForm config for tailwind based forms'
      source_root File.expand_path('templates', __dir__)

      def copy_initialzier
        copy_file('simple_form.rb', 'config/initializers/simple_form_tailwind.rb', force: true)
      end
    end
  end
end