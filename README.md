# GrovePi for Ruby

Unofficial bindings for the [GrovePi][] library, allowing you to write
your Raspberry Pi software for GrovePi+ in Ruby!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grovepi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grovepi

## Usage

Read the current temperature:

```ruby
Grovepi.temperature # => 70
```

Read the current pH level:

```ruby
Grovepi.ph # => 6.83
```

Turn the LED on and off:

```ruby
Grovepi.led.active = true
Grovepi.led.active? # => true
Grovepi.led.active = false
Grovepi.led.active? # => false
```

### Low-level API

You can also use the "low-level" API to do raw digital and analog
reads/writes on the device.

For example, here is how to perform the above LED functions with the
low-level `digitalWrite` and `digitalRead` calls:

```ruby
# the LED is off..
Grovepi.digital_read(4)     # => 0
# send data bit 1 to port D4 to turn on the LED
Grovepi.digital_write(4,1)
Grovepi.digital_read(4)     # => 1
# the LED is now on. send data bit 0 to port D4 to turn off the LED
Grovepi.digital_write(4,0)
Grovepi.digital_read(4)     # => 0
```

## Development

This gem requires an installation of [Raspbian][], and therefore cannot
be compiled on most machines. Provided in this repo is a `Dockerfile`
which describes how to build a Docker container locally for gem testing.

To build the gem into a Docker container, run:

    docker build .

When that's done, you can now run tests in your container:

    docker run 'bin/rake test'

You can also get a console in your container:

    docker run 'bin/console'

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tubbo/grovepi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grovepi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tubbo/grovepi/blob/master/CODE_OF_CONDUCT.md).
