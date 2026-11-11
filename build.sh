#!/usr/bin/env bash
# Wraps app.html (artifact-style body) into a standalone index.html for hosting anywhere over HTTPS.
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html><html lang="en"><head><meta charset="utf-8">' \
  '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
  '<meta name="theme-color" content="#0d1013"><meta name="apple-mobile-web-app-capable" content="yes">' \
  '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
  '</head><body>'
  cat app.html
  printf '%s\n' '</body></html>'
} > index.html
echo "built index.html"
