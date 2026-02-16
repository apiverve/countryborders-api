# Country Borders API - Dart/Flutter Client

Country Borders is a simple tool for getting the list of neighboring countries for a specific country. It returns the list of neighboring countries for the specified country.

[![pub package](https://img.shields.io/pub/v/apiverve_countryborders.svg)](https://pub.dev/packages/apiverve_countryborders)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Country Borders API](https://countryborders.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_countryborders: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_countryborders/apiverve_countryborders.dart';

void main() async {
  final client = CountrybordersClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'country': 'CA'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Country Borders API](https://countryborders.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/countryborders](https://docs.apiverve.com/ref/countryborders?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
