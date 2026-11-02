# [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change, while paid plans add 4-week and 52-week changes, the 52-week high, low and average, and the last 52 weekly rates.

The Mortgage Rate API provides a simple, reliable way to integrate mortgage rate functionality into your applications. Built for developers who need production-ready mortgage rate capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/mortgagerate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/mortgagerate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/mortgagerate)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MortgageRate)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-mortgagerate/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_mortgagerate)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/mortgagerate)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_mortgagerate)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMortgageRateAPI() {
    try {
        const params = new URLSearchParams({
            type: '30year',
            changes: true
        });

        const response = await fetch(`https://api.apiverve.com/v1/mortgagerate?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMortgageRateAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/mortgagerate?type=30year&changes=true" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/mortgagerate
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/mortgagerate) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MortgageRate
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MortgageRate) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-mortgagerate
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-mortgagerate/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_mortgagerate
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_mortgagerate) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/mortgagerate
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/mortgagerate) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_mortgagerate
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_mortgagerate) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:mortgagerate-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/mortgagerate-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/mortgagerate](https://docs.apiverve.com/ref/mortgagerate)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Mortgage Rate API is commonly used for:

- **Web Applications** - Add mortgage rate features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with mortgage rate capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Mortgage Rate API:

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

---

## Support & Community

- 🏠 **API Home**: [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
