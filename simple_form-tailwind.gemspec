# frozen_string_literal: true

require_relative 'lib/simple_form/tailwind/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_form-tailwind'
  spec.version       = SimpleForm::Tailwind::VERSION
  spec.authors       = ['Brandon Hicks']
  spec.email         = ['tarellel@gmail.com']

  spec.summary       = 'A basic rails generator for adding a simpleform config setup for tailwindCSS based forms'
  spec.description   = 'A generator to add a simple_form config setup for tailwindCSS based forms'
  spec.homepage      = 'https://github.com/tarellel/simple_form-tailwind'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/tarellel/simple_form-tailwind/issues',
    'changelog_uri' => 'https://github.com/tarellel/simple_form-tailwind/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/tarellel/simple_form-tailwind'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties', ">= #{SimpleForm::Tailwind::MIN_RAILS_VERSION}"
  spec.add_dependency 'simple_form', ">= #{SimpleForm::Tailwind::MIN_SIMPLEFORM_VERSION}"
  spec.add_development_dependency 'bundler', '>= 1.17', '<= 3'
  spec.add_development_dependency 'rake', '>= 7.0', '<= 20.0'
end
