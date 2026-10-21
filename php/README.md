# Mortgage Rate API - PHP Package

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change.

## Installation

Install via Composer:

```bash
composer require apiverve/mortgagerate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Mortgagerate\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'type' => '30year',
    'year' => 2023,
    'month' => 6
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Mortgagerate\Client;
use APIVerve\Mortgagerate\Exceptions\APIException;
use APIVerve\Mortgagerate\Exceptions\ValidationException;

try {
    $response = $client->execute(['type' => '30year', 'year' => 2023, 'month' => 6]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mortgagerate?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mortgagerate?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mortgagerate?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
