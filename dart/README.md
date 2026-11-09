# Mortgage Rate API - Dart/Flutter Client

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change, while paid plans add 4-week and 52-week changes, the 52-week high, low and average, and the last 52 weekly rates.

[![pub package](https://img.shields.io/pub/v/apiverve_mortgagerate.svg)](https://pub.dev/packages/apiverve_mortgagerate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_mortgagerate: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_mortgagerate/apiverve_mortgagerate.dart';

void main() async {
  final client = MortgagerateClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'type': '30year',
      'year': 2023,
      'month': 6,
      'history': true,
      'changes': true
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
    "rateType": "30year",
    "name": "30-Year Fixed Rate Mortgage",
    "term": 30,
    "type": "fixed",
    "country": "US",
    "year": 2026,
    "count": 1,
    "rates": [
      {
        "week": "2026-10-22",
        "rate": 7.32
      }
    ],
    "change1w": -0.08,
    "changeDirection": "down",
    "previousRate": 7.4,
    "previousDate": "2026-10-15",
    "change4w": 0.29,
    "change52w": 1.13,
    "high52w": 7.4,
    "low52w": 5.98,
    "average52w": 6.4423,
    "history": [
      {
        "week": "2025-10-30",
        "rate": 6.17
      },
      {
        "week": "2025-11-06",
        "rate": 6.22
      },
      {
        "week": "2025-11-13",
        "rate": 6.24
      },
      {
        "week": "2025-11-20",
        "rate": 6.26
      },
      {
        "week": "2025-11-26",
        "rate": 6.23
      },
      {
        "week": "2025-12-04",
        "rate": 6.19
      },
      {
        "week": "2025-12-11",
        "rate": 6.22
      },
      {
        "week": "2025-12-18",
        "rate": 6.21
      },
      {
        "week": "2025-12-24",
        "rate": 6.18
      },
      {
        "week": "2025-12-31",
        "rate": 6.15
      },
      {
        "week": "2026-01-08",
        "rate": 6.16
      },
      {
        "week": "2026-01-15",
        "rate": 6.06
      },
      {
        "week": "2026-01-22",
        "rate": 6.09
      },
      {
        "week": "2026-01-29",
        "rate": 6.1
      },
      {
        "week": "2026-02-05",
        "rate": 6.11
      },
      {
        "week": "2026-02-12",
        "rate": 6.09
      },
      {
        "week": "2026-02-19",
        "rate": 6.01
      },
      {
        "week": "2026-02-26",
        "rate": 5.98
      },
      {
        "week": "2026-03-05",
        "rate": 6
      },
      {
        "week": "2026-03-12",
        "rate": 6.11
      },
      {
        "week": "2026-03-19",
        "rate": 6.22
      },
      {
        "week": "2026-03-26",
        "rate": 6.38
      },
      {
        "week": "2026-04-02",
        "rate": 6.46
      },
      {
        "week": "2026-04-09",
        "rate": 6.37
      },
      {
        "week": "2026-04-16",
        "rate": 6.3
      },
      {
        "week": "2026-04-23",
        "rate": 6.23
      },
      {
        "week": "2026-04-30",
        "rate": 6.3
      },
      {
        "week": "2026-05-07",
        "rate": 6.37
      },
      {
        "week": "2026-05-14",
        "rate": 6.36
      },
      {
        "week": "2026-05-21",
        "rate": 6.51
      },
      {
        "week": "2026-05-28",
        "rate": 6.53
      },
      {
        "week": "2026-06-04",
        "rate": 6.48
      },
      {
        "week": "2026-06-11",
        "rate": 6.52
      },
      {
        "week": "2026-06-18",
        "rate": 6.47
      },
      {
        "week": "2026-06-25",
        "rate": 6.49
      },
      {
        "week": "2026-07-02",
        "rate": 6.43
      },
      {
        "week": "2026-07-09",
        "rate": 6.49
      },
      {
        "week": "2026-07-16",
        "rate": 6.55
      },
      {
        "week": "2026-07-23",
        "rate": 6.58
      },
      {
        "week": "2026-07-30",
        "rate": 6.66
      },
      {
        "week": "2026-08-06",
        "rate": 6.69
      },
      {
        "week": "2026-08-13",
        "rate": 6.67
      },
      {
        "week": "2026-08-20",
        "rate": 6.65
      },
      {
        "week": "2026-08-27",
        "rate": 6.66
      },
      {
        "week": "2026-09-03",
        "rate": 6.71
      },
      {
        "week": "2026-09-10",
        "rate": 6.76
      },
      {
        "week": "2026-09-17",
        "rate": 6.95
      },
      {
        "week": "2026-09-24",
        "rate": 7.03
      },
      {
        "week": "2026-10-01",
        "rate": 7.28
      },
      {
        "week": "2026-10-08",
        "rate": 7.4
      },
      {
        "week": "2026-10-15",
        "rate": 7.4
      },
      {
        "week": "2026-10-22",
        "rate": 7.32
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/mortgagerate](https://docs.apiverve.com/ref/mortgagerate?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
