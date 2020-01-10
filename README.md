SolidusGeocoding
================

[![CircleCI](https://circleci.com/gh/solidusio-contrib/solidus_geocoding.svg?style=svg)](https://circleci.com/gh/solidusio-contrib/solidus_geocoding)

Add geocoding to `Spree::Address`.

See https://github.com/alexreisner/geocoder

Installation
------------

Add solidus_geocoding to your Gemfile:

```ruby
gem 'solidus_geocoding'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_geocoding:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_geocoding/factories'
```

Releasing
---------

Your new extension version can be released using `gem-release` like this:

```shell
bundle exec gem bump -v VERSION --tag --push --remote upstream && gem release
```

Copyright (c) 2016 [Taylor Scott], released under the New BSD License
