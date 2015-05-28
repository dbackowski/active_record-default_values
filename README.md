# ActiveRecord::DefaultValues

Add default values to Active Record models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_record-default_values'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_record-default_values

## Usage

```ruby
class User < ActiveRecord::Base
  default_value :first_name, 'John'
  default_value :last_name, 'Doe'
  default_value :active, false
  default_value :add_time, -> { Time.now }
  default_value :age, 20
end

User.new(first_name: 'Samwise')

=> #<User id: nil, first_name: "Samwise", last_name: "Doe", add_time: "2015-05-27 15:35:32", active: false, age: 20>
```

## Contributing

1. Fork it ( https://github.com/dbackowski/active_record-default_values/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Copyright (c) 2015 [Damian Baćkowski], released under the MIT license
