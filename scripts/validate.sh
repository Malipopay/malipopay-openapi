#!/usr/bin/env bash
# Validate the MaliPoPay OpenAPI spec using Spectral
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SPEC_FILE="$SCRIPT_DIR/../openapi.yaml"

echo "Validating $SPEC_FILE ..."
npx @stoplight/spectral-cli lint "$SPEC_FILE"
echo "Validation complete."
