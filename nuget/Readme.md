Mortgage Rate API
============

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change, while paid plans add 4-week and 52-week changes, the 52-week high, low and average, and the last 52 weekly rates.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.MortgageRate.svg)](https://www.nuget.org/packages/APIVerve.API.MortgageRate)

This is a .NET wrapper for the [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.MortgageRate
```

Using the Package Manager:
```
nuget install APIVerve.API.MortgageRate
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.MortgageRate
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.MortgageRate"
5. Click on the APIVerve.API.MortgageRate package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Mortgage Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.MortgageRate;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MortgageRateQueryOptions {
            Type = "30year",
            Year = 2023,
            Month = 6,
            History = true,
            Changes = true
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Mortgage Rate API documentation is found here: [https://docs.apiverve.com/ref/mortgagerate](https://docs.apiverve.com/ref/mortgagerate?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Mortgage Rate API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MortgageRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MortgageRateQueryOptions {
            Type = "30year",
            Year = 2023,
            Month = 6,
            History = true,
            Changes = true
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.MortgageRate;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MortgageRateQueryOptions {
            Type = "30year",
            Year = 2023,
            Month = 6,
            History = true,
            Changes = true
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MortgageRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MortgageRateQueryOptions {
            Type = "30year",
            Year = 2023,
            Month = 6,
            History = true,
            Changes = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MortgageRate;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new MortgageRateQueryOptions {
            Type = "30year",
            Year = 2023,
            Month = 6,
            History = true,
            Changes = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new MortgageRateQueryOptions {
    Type = "30year",
    Year = 2023,
    Month = 6,
    History = true,
    Changes = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new MortgageRateQueryOptions {
    Type = "30year",
    Year = 2023,
    Month = 6,
    History = true,
    Changes = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new MortgageRateQueryOptions {
    Type = "30year",
    Year = 2023,
    Month = 6,
    History = true,
    Changes = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new MortgageRateQueryOptions {
    Type = "30year",
    Year = 2023,
    Month = 6,
    History = true,
    Changes = true
};

using (var apiClient = new MortgageRateAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
