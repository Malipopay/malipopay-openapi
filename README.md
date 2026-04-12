# MALIPOPAY OpenAPI Specification

The official OpenAPI 3.0 specification for the [MaliPoPay](https://malipopay.co.tz) payment platform.

MaliPoPay provides web and mobile payment solutions for businesses in Tanzania -- Mobile Money (M-Pesa, Tigo Pesa, Airtel Money, Halo Pesa), Bank Transfer, USSD, Card, and Lipa Number.

## Files

| File | Description |
|------|-------------|
| `openapi.yaml` | Main OpenAPI 3.0 specification (YAML) |
| `schemas/` | Shared schema components (reserved for future splitting) |
| `examples/` | Request/response examples (reserved) |
| `scripts/validate.sh` | Lint the spec with Spectral |

## Quick Start

### View the spec

Open `openapi.yaml` in any OpenAPI-compatible tool:

- [Swagger Editor](https://editor.swagger.io) -- paste or import the file
- [Stoplight Studio](https://stoplight.io/studio)
- [Redocly](https://redocly.com)

### Validate locally

```bash
./scripts/validate.sh
```

Or manually:

```bash
npx @stoplight/spectral-cli lint openapi.yaml
```

## Environments

| Environment | Base URL |
|-------------|----------|
| Production  | `https://core-prod.malipopay.co.tz` |
| UAT / Sandbox | `https://core-uat.malipopay.co.tz` |

## Authentication

All API requests require a project-level API key passed in the `apiToken` header:

```bash
curl -H "apiToken: your-api-key" \
  https://core-prod.malipopay.co.tz/api/v1/payment
```

Get your API key from the MaliPoPay dashboard under **Settings > API Keys**.

## SDKs

| Language | Package | Repository |
|----------|---------|------------|
| Node.js  | `malipopay-node` | [github.com/nickswalker21/malipopay-node](https://github.com/nickswalker21/malipopay-node) |
| Python   | `malipopay-python` | [github.com/nickswalker21/malipopay-python](https://github.com/nickswalker21/malipopay-python) |

## API Overview

### Payments
Collect payments via Mobile Money push (M-Pesa, Tigo Pesa, Airtel Money), disburse funds, verify transaction status, and generate reports.

### Customers
Create and manage customer records with phone number, email, and address details.

### Invoices
Create invoices with line items, tax calculations, and TRA (Tanzania Revenue Authority) fiscal receipt integration.

### Products
Manage your product and service catalogue with pricing, categories, and tax settings.

### SMS
Send single, bulk, and scheduled SMS messages to customers.

## Full Reference

The complete API specification with all 120+ endpoints (including accounting, USSD, TRA, notifications, and more) is available in the [malipopay-docs](https://github.com/nickswalker21/malipopay-docs) repository at `public/openapi/openapi.json`.

## License

MIT -- see [LICENSE](./LICENSE).

Copyright 2026 Lockwood Technology Ltd.
