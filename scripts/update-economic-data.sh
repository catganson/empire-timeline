#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DATA_DIR="$ROOT_DIR/data"
mkdir -p "$DATA_DIR"

curl -fsSL "https://fred.stlouisfed.org/graph/fredgraph.csv?id=A124RC1A027NBEA" -o "$DATA_DIR/current-account.csv"
curl -fsSL "https://fred.stlouisfed.org/graph/fredgraph.csv?id=GDPA" -o "$DATA_DIR/gdp.csv"
curl -fsSL "https://fred.stlouisfed.org/graph/fredgraph.csv?id=IIPUSNETIA" -o "$DATA_DIR/niip.csv"
curl -fsSL "https://fred.stlouisfed.org/graph/fredgraph.csv?id=ROWTSEA027N" -o "$DATA_DIR/foreign-treasury-holdings.csv"

echo "Updated:"
ls -lh "$DATA_DIR"/current-account.csv "$DATA_DIR"/gdp.csv "$DATA_DIR"/niip.csv "$DATA_DIR"/foreign-treasury-holdings.csv
