#!/bin/bash
set -e

pip install -r requirements.txt

rm -rf ./reports
mkdir -p reports

python -m pytest --cov-report xml:./reports/cov.xml --cov=./ tests/ --junitxml=./reports/report.xml