# Configjson

Configure your ruby applications

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'configjson'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install configjson

## Usage

```
$ mkdir config
$ vi config/default.json

{
  "mysql": {
    "host": "localhost"
  }
}
```

```
$ vi config/production.json

{
  "mysql": {
    "host": "foo.bar.com"
  }
}
```

Use configs in your code:

```
config = Configjson::RubyConfig.new
host = config.get("mysql.host")  # localhost or foo.bar.com
```

Start you application

```
$ env RUBY_ENV=production
$ ruby your-app.rb
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/configjson/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
