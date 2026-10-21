# Country Borders API - Ruby Gem

Country Borders identifies adjacent nations by two-letter ISO country code. It returns the list of bordering countries along with region, subregion, and landlocked status.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_countryborders'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_countryborders
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_countryborders'

# Initialize the client
client = APIVerve::Countryborders::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ country: "CA" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "CA" })
  puts response["data"]
rescue APIVerve::Countryborders::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Countryborders::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Countryborders::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "Canada",
    "cca2": "CA",
    "landlocked": false,
    "region": "Americas",
    "subregion": "Northern America",
    "coordinates": {
      "lat": 60,
      "lng": -95
    },
    "borders": [
      "USA"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/countryborders?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/countryborders?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/countryborders?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
