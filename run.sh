#!/bin/bash
set -e

pip install -r requirements.txt
python -m pytest --cov-report term --cov=./ tests/