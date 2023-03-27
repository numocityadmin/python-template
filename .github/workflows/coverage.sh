#!/bin/bash
set -e

coverage run -m unittest discover
coverage html
coverage report
COVERAGE=$(coverage report | awk 'END{print $NF}' | sed 's/[^0-9]*//g')
if [ "$COVERAGE" -lt 100 ]; then
    echo "Coverage is less than 100%. Failing the build..."
    exit 1
else
    echo "Coverage is greater than or equal to 100%."
fi
