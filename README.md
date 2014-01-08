# Randr

Simple wrapper for random number generation in Ruby. Toy project that works around the info provided by [this][stackoverflow] StackOverflow answer.

## Installation

Add this line to your application's Gemfile:

    gem 'randr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randr

## Usage

```ruby
require "randr"

gen = Randr::Generator.new

nums = gen.times(3).from(0).to(11)
# => [0, 1, 10]
```

[stackoverflow]: http://stackoverflow.com/a/198470/1031374
