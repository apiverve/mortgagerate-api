# Mortgage Rate API - Ruby Gem

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_mortgagerate'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_mortgagerate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_mortgagerate'

# Initialize the client
client = APIVerve::Mortgagerate::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  type: "30year",
  year: 2023,
  month: 6
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ type: "30year", year: 2023, month: 6 })
  puts response["data"]
rescue APIVerve::Mortgagerate::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Mortgagerate::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Mortgagerate::Client.new(
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
    "rateType": "30year",
    "name": "30-Year Fixed Rate Mortgage",
    "term": 30,
    "type": "fixed",
    "country": "US",
    "year": 2023,
    "month": 6,
    "count": 4,
    "rates": [
      {
        "week": "2023-06-01",
        "rate": 6.79
      },
      {
        "week": "2023-06-08",
        "rate": 6.71
      },
      {
        "week": "2023-06-15",
        "rate": 6.69
      },
      {
        "week": "2023-06-22",
        "rate": 6.67
      }
    ],
    "change1w": -0.02,
    "changeDirection": "down",
    "previousRate": 6.69,
    "previousDate": "2023-06-15"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mortgagerate?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mortgagerate?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mortgagerate?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
