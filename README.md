# GamesBack [![Build Status](https://travis-ci.org/porkchopclub/games_back.svg?branch=master)](https://travis-ci.org/porkchopclub/games_back)

Given a hash of win/loss records, return a hash with the same keys and the
number of [games behind](https://en.wikipedia.org/wiki/Games_behind) each key
is.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'games_back'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install games_back

## Usage

```ruby
require 'games_back'
GamesBack.calculate({ 1 => [3, 1], 2 => [1, 2], 3 => [10, 9], 4 => [0, 12] })
=> {1=>nil, 3=>0.5, 2=>1.5, 4=>7.0}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jarednorman/games_back. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.
