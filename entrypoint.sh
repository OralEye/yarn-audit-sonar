#!/usr/bin/env bash

pnpm audit --json | jq -s --argfile lookups /opt/lookups.json -f /opt/filter.jq > pnpmaudit-sonar.json

cat pnpmaudit-sonar.json
