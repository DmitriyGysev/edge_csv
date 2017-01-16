# EdgeCsv

There is the gem which make your work with csv and database pretty simple, by using just only two commands: EdgeCsv.export({}) and EdgeCsv.import({}).

## Getting Started

Add this line to your application's Gemfile:

```ruby
gem 'edge_csv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edge_csv

## Documentation
Params for export:

```ruby
    {
        "subjects": @products,
        "fileds": %w(price name),
        "sequince": %w(name price),
        "headers": false,
        "header_names": {
                            "name": "Product Name",
                            "price": "Product Price"
                        }
    }