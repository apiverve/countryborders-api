# Country Borders API - PHP Package

Country Borders identifies adjacent nations by two-letter ISO country code. It returns the list of bordering countries along with region, subregion, and landlocked status.

## Installation

Install via Composer:

```bash
composer require apiverve/countryborders
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Countryborders\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['country' => 'CA']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Countryborders\Client;
use APIVerve\Countryborders\Exceptions\APIException;
use APIVerve\Countryborders\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'CA']);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/countryborders?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/countryborders?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/countryborders?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
