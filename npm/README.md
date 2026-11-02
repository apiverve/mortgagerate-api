# Mortgage Rate API

Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change, while paid plans add 4-week and 52-week changes, the 52-week high, low and average, and the last 52 weekly rates.

[![npm version](https://img.shields.io/npm/v/@apiverve/mortgagerate.svg)](https://www.npmjs.com/package/@apiverve/mortgagerate)

This is a JavaScript wrapper for the [Mortgage Rate API](https://apiverve.com/marketplace/mortgagerate?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/mortgagerate
```

Using yarn:
```shell
yarn add @apiverve/mortgagerate
```

---

## Configuration

Before using the Mortgage Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Mortgage Rate API documentation is found here: [https://docs.apiverve.com/ref/mortgagerate](https://docs.apiverve.com/ref/mortgagerate?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const mortgagerateAPI = require('@apiverve/mortgagerate');
const api = new mortgagerateAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  type: "30year",
  year: 2023,
  month: 6,
  history: false,
  changes: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  type: "30year",
  year: 2023,
  month: 6,
  history: false,
  changes: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  type: "30year",
  year: 2023,
  month: 6,
  history: false,
  changes: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
