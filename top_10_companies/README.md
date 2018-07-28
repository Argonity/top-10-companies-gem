# Top10Companies

This Ruby Gem provides a CLI to view the Top 10 Companies to Work For in 2018, as displayed on greatplacetowork.com.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top_10_companies'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top_10_companies

## Usage

Once you've installed the Gem, follow the on-screen prompts to select a company from the top 10 list by inputing 1-10. Once you've made a selection, that company's details are displayed such as its Industry, Employee Rating, and What They Do. You will then be asked to reply "Y" or "N" if you'd like to view another company's details. If you reply "Y", the program will again display the list to choose from. If you reply "N", the program exits with a goodbye message.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'Argonity'/top_10_companies.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
