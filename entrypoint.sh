#!/usr/bin/env bash

pnpm audit --json | jq -s --argfile lookups /opt/lookups.json -f /opt/filter.jq > yarnaudit-sonar.json

cat yarnaudit-sonar.json
