#!/bin/bash
# เช็กว่าแต่ละ .feature มีโครงสร้างพื้นฐาน (Feature:, Scenario:, *)

set -e

for file in "$@"; do
  if ! grep -qE '^Feature:|^Scenario:|^\s+\*' "$file"; then
    echo "[ERROR] $file seems invalid or empty Karate feature"
    exit 1
  fi
done
