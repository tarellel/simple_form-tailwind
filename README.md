# SimpleForm::Tailwind

Used to add a base [simple_form](https://github.com/heartcombo/simple_form) configuration with Tailwind CSS classes for form attributes.

**NOTE:** This simple_form configuration is optimized for Rails 7> and Tailwind CSS 4.

## Prerequisites

Before installing this gem, make sure you have installed Tailwind CSS in your Rails application:

```bash
./bin/bundle add tailwindcss-ruby
./bin/bundle add tailwindcss-rails
./bin/rails tailwindcss:install
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_form-tailwind'
```

Then execute:

    $ bundle install

Or install it yourself as:

    $ gem install simple_form-tailwind

## Usage

To use this simple_form configuration, you need to ensure that your application uses simple_form to generate its forms.
Run the generator to add the following file to your application `config/initializers/simple_form_tailwind.rb`:

    $ rails g simple_form:tailwind:install

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tarellel/simple_form-tailwind.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
