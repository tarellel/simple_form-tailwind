# SimpleForm::Tailwind

Used to add a base [simple_form](https://github.com/heartcombo/simple_form) config with basic tailwind classes added to the form attributes.

**NOTE:** This simple_form config is best used with tailwindCSS `v2.0`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_form-tailwind'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install simple_form-tailwind

## Usage

To use this simple_form config you need to ensure your application is using simple_form to generate it's forms.
Run the generator to add the following file to your application `config/initializers/simple_form_tailwind.rb`

    $ rails g simple_form:tailwind:install

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tarellel/simple_form-tailwind.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
