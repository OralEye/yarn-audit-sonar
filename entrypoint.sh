#!/usr/bin/env bash

yarn audit --json | jq -s --argfile lookups /opt/lookups.json -f /opt/filter.jq > yarnaudit-sonar.json
