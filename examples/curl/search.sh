#!/usr/bin/env bash
# Homestra Search API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./search.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/homestra/search" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode 'query=https://homestra.com/list/houses-for-sale/?maximum-price=900000&minimum-price=75000&page=1'
