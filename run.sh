#!/bin/bash
set -e

pip install -r requirements.txt
mkdir -p reports
python -m pytest --cov-report term --cov=./ tests/ --junitxml=./reports/report.xml